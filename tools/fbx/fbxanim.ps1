# Lee un .fbx binario (7.x) y saca los huesos (reposo) y sus curvas de animación.
# Uso: .\fbxanim.ps1 -Path anim.fbx [-Out anim.txt]
# Salida (texto): ajustes globales, un "BONE nombre padre T(x,y,z) R(x,y,z) Pre(x,y,z) Post(x,y,z) orden"
# por hueso y un "CURVE hueso canal eje t1:v1 t2:v2 ..." por curva (t en segundos, R en grados).
param([string]$Path, [string]$Out)
Add-Type -TypeDefinition @'
using System;
using System.IO;
using System.IO.Compression;
using System.Collections.Generic;
using System.Text;

public class FbxNode {
    public string Name;
    public List<object> Props = new List<object>();
    public List<FbxNode> Children = new List<FbxNode>();
    public FbxNode Child(string n) { foreach (var c in Children) if (c.Name == n) return c; return null; }
}

public static class Fbx {
    static bool big;
    public static FbxNode Read(string path) {
        var br = new BinaryReader(new MemoryStream(File.ReadAllBytes(path)));
        br.ReadBytes(23);
        uint ver = br.ReadUInt32();
        big = ver >= 7500;
        var root = new FbxNode { Name = "" };
        while (true) { var n = ReadNode(br); if (n == null) break; root.Children.Add(n); }
        return root;
    }
    static FbxNode ReadNode(BinaryReader br) {
        long end = big ? (long)br.ReadUInt64() : br.ReadUInt32();
        long np = big ? (long)br.ReadUInt64() : br.ReadUInt32();
        long pl = big ? (long)br.ReadUInt64() : br.ReadUInt32();
        int nl = br.ReadByte();
        if (end == 0) return null;
        var node = new FbxNode { Name = Encoding.ASCII.GetString(br.ReadBytes(nl)) };
        for (long i = 0; i < np; i++) node.Props.Add(ReadProp(br));
        while (br.BaseStream.Position < end) {
            var c = ReadNode(br);
            if (c == null) break;
            node.Children.Add(c);
        }
        br.BaseStream.Position = end;
        return node;
    }
    static object ReadProp(BinaryReader br) {
        char t = (char)br.ReadByte();
        switch (t) {
            case 'Y': return (double)br.ReadInt16();
            case 'C': return (double)br.ReadByte();
            case 'I': return (double)br.ReadInt32();
            case 'F': return (double)br.ReadSingle();
            case 'D': return br.ReadDouble();
            case 'L': return br.ReadInt64();
            case 'S': { int len = br.ReadInt32(); return Encoding.UTF8.GetString(br.ReadBytes(len)); }
            case 'R': { int len = br.ReadInt32(); br.ReadBytes(len); return "<raw>"; }
            default: {
                int count = br.ReadInt32(), enc = br.ReadInt32(), clen = br.ReadInt32();
                byte[] data = br.ReadBytes(clen);
                if (enc == 1) {
                    var ms = new MemoryStream(data, 2, data.Length - 2);
                    var ds = new DeflateStream(ms, CompressionMode.Decompress);
                    var o = new MemoryStream(); ds.CopyTo(o); data = o.ToArray();
                }
                var r = new BinaryReader(new MemoryStream(data));
                if (t == 'f') { var a = new double[count]; for (int i = 0; i < count; i++) a[i] = r.ReadSingle(); return a; }
                if (t == 'd') { var a = new double[count]; for (int i = 0; i < count; i++) a[i] = r.ReadDouble(); return a; }
                if (t == 'l') { var a = new long[count]; for (int i = 0; i < count; i++) a[i] = r.ReadInt64(); return a; }
                if (t == 'i') { var a = new double[count]; for (int i = 0; i < count; i++) a[i] = r.ReadInt32(); return a; }
                if (t == 'b') { var a = new double[count]; for (int i = 0; i < count; i++) a[i] = r.ReadByte(); return a; }
                return null;
            }
        }
    }
}
'@
$root = [Fbx]::Read((Resolve-Path $Path).Path)
$inv = [Globalization.CultureInfo]::InvariantCulture
function F($x) { ([double]$x).ToString("0.######", $inv) }
$lines = New-Object System.Collections.Generic.List[string]

# global settings
$gs = $root.Child("GlobalSettings")
if ($gs) { foreach ($p in $gs.Child("Properties70").Children) { $n = $p.Props[0]; if ($n -match 'Axis|UnitScale|TimeMode|CustomFrameRate') { $lines.Add("GLOBAL $n " + (F $p.Props[4])) } } }

$objs = $root.Child("Objects")
$models = @{}; $cnodes = @{}; $curves = @{}
foreach ($o in $objs.Children) {
    $id = $o.Props[0]; $name = ($o.Props[1] -split "`0")[0]
    if ($o.Name -eq "Model") {
        $m = @{ name = $name; type = $o.Props[2]; T = @(0,0,0); R = @(0,0,0); Pre = @(0,0,0); Post = @(0,0,0); S = @(1,1,1); Order = 0 }
        $p70 = $o.Child("Properties70")
        if ($p70) { foreach ($p in $p70.Children) {
            switch ($p.Props[0]) {
                "Lcl Translation" { $m.T = @($p.Props[4], $p.Props[5], $p.Props[6]) }
                "Lcl Rotation" { $m.R = @($p.Props[4], $p.Props[5], $p.Props[6]) }
                "Lcl Scaling" { $m.S = @($p.Props[4], $p.Props[5], $p.Props[6]) }
                "PreRotation" { $m.Pre = @($p.Props[4], $p.Props[5], $p.Props[6]) }
                "PostRotation" { $m.Post = @($p.Props[4], $p.Props[5], $p.Props[6]) }
                "RotationOrder" { $m.Order = $p.Props[4] }
            } } }
        $models[$id] = $m
    } elseif ($o.Name -eq "AnimationCurveNode") {
        $cnodes[$id] = @{ name = $name }
    } elseif ($o.Name -eq "AnimationCurve") {
        $curves[$id] = @{ t = $o.Child("KeyTime").Props[0]; v = $o.Child("KeyValueFloat").Props[0] }
    }
}
$parent = @{}
foreach ($c in $root.Child("Connections").Children) {
    $kind = $c.Props[0]; $child = $c.Props[1]; $par = $c.Props[2]
    if ($models.ContainsKey($child) -and $models.ContainsKey($par)) { $parent[$child] = $par }
    if ($cnodes.ContainsKey($child) -and $models.ContainsKey($par) -and $kind -eq "OP") { $cnodes[$child].model = $par; $cnodes[$child].prop = $c.Props[3] }
    if ($curves.ContainsKey($child) -and $cnodes.ContainsKey($par)) { $curves[$child].node = $par; $curves[$child].axis = $c.Props[3] }
}
if ($env:FBXDBG) {
    "models=$($models.Count) cnodes=$($cnodes.Count) curves=$($curves.Count)"
    $k = 0; foreach ($c in $root.Child("Connections").Children) { if ($k -lt 8) { "conn " + ($c.Props -join ' | ') + " :: " + (($c.Props | ForEach-Object { $_.GetType().Name }) -join ',') }; $k++ }
    $k = 0; foreach ($o in $objs.Children) { if ($o.Name -like "Anim*" -and $k -lt 6) { "obj " + $o.Name + " " + ($o.Props -join ' | ') + " children: " + (($o.Children | ForEach-Object { $_.Name }) -join ','); $k++ } }
    $ids = @{}; foreach ($o in $objs.Children) { $ids[$o.Name] = 1 + [int]$ids[$o.Name] }; $ids.GetEnumerator() | ForEach-Object { "kind $($_.Key)=$($_.Value)" }
    return
}
foreach ($id in $models.Keys) {
    $m = $models[$id]
    $pn = if ($parent.ContainsKey($id)) { $models[$parent[$id]].name } else { "-" }
    $lines.Add(("BONE {0} {1} {2} T({3},{4},{5}) R({6},{7},{8}) Pre({9},{10},{11}) Post({12},{13},{14}) S({15},{16},{17}) order={18}" -f $m.name, $pn, $m.type, (F $m.T[0]), (F $m.T[1]), (F $m.T[2]), (F $m.R[0]), (F $m.R[1]), (F $m.R[2]), (F $m.Pre[0]), (F $m.Pre[1]), (F $m.Pre[2]), (F $m.Post[0]), (F $m.Post[1]), (F $m.Post[2]), (F $m.S[0]), (F $m.S[1]), (F $m.S[2]), $m.Order))
}
foreach ($cv in $curves.Values) {
    if (-not $cv.node) { continue }
    $cn = $cnodes[$cv.node]
    if (-not $cn.model) { continue }
    $keys = for ($i = 0; $i -lt $cv.t.Length; $i++) { (F ($cv.t[$i] / 46186158000.0)) + ":" + (F $cv.v[$i]) }
    $lines.Add("CURVE {0} {1} {2} {3}" -f $models[$cn.model].name, $cn.prop, $cv.axis, ($keys -join " "))
}
if ($Out) { $lines | Out-File -Encoding utf8 $Out } else { $lines }
