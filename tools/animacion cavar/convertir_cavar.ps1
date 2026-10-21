# Convierte la salida de exportar_cavar.py (matrices de cada hueso R15 en Blender, fotograma a fotograma)
# a las líneas FRAMES de ReplicatedStorage.DigAnim (Transform de cada articulación: rx, ry, rz [, px, py, pz]).
# Uso: .\convertir_cavar.ps1 -Json cavar.json
# Blender: Z arriba y el personaje mira a +Y. Roblox: Y arriba y mira a -Z  =>  (x, y, z) -> (x, z, -y).
# Las articulaciones R15 tienen los ejes alineados, así que la rotación de cada una es la rotación del hueso hijo
# respecto al padre (cada una medida desde su reposo). Solo la cadera (LowerTorso) lleva desplazamiento.
param([string]$Json)
Add-Type -TypeDefinition @'
using System;
public static class M3 {
    // 3x3 rotation from a 4x4 row-major matrix, converted to Roblox axes
    public static double[,] Conv(double[,] b) {
        int[] map = { 0, 2, 1 }; double[] sg = { 1, 1, -1 };   // rbx axis i = sg[i] * blender axis map[i]
        var r = new double[3, 3];
        for (int i = 0; i < 3; i++) for (int j = 0; j < 3; j++) r[i, j] = sg[i] * sg[j] * b[map[i], map[j]];
        return Ortho(r);
    }
    public static double[] ConvP(double[,] b) { return new double[] { b[0, 3], b[2, 3], -b[1, 3] }; }
    public static double[,] Ortho(double[,] r) {
        // normalise columns (removes bone scale)
        for (int j = 0; j < 3; j++) { double n = Math.Sqrt(r[0, j] * r[0, j] + r[1, j] * r[1, j] + r[2, j] * r[2, j]); for (int i = 0; i < 3; i++) r[i, j] /= n; }
        return r;
    }
    public static double[,] Mul(double[,] a, double[,] b) { var c = new double[3, 3]; for (int i = 0; i < 3; i++) for (int j = 0; j < 3; j++) { double s = 0; for (int k = 0; k < 3; k++) s += a[i, k] * b[k, j]; c[i, j] = s; } return c; }
    public static double[,] T(double[,] a) { var c = new double[3, 3]; for (int i = 0; i < 3; i++) for (int j = 0; j < 3; j++) c[i, j] = a[j, i]; return c; }
    public static double[] Apply(double[,] a, double[] v) { return new double[] { a[0, 0] * v[0] + a[0, 1] * v[1] + a[0, 2] * v[2], a[1, 0] * v[0] + a[1, 1] * v[1] + a[1, 2] * v[2], a[2, 0] * v[0] + a[2, 1] * v[1] + a[2, 2] * v[2] }; }
    // R = Rz(z) * Ry(y) * Rx(x)  (DigAnim's toCF)
    public static double[] EulerZYX(double[,] r) {
        double y = Math.Asin(Math.Max(-1, Math.Min(1, -r[2, 0])));
        double x = Math.Atan2(r[2, 1], r[2, 2]);
        double z = Math.Atan2(r[1, 0], r[0, 0]);
        return new double[] { x, y, z };
    }
}
'@
$inv = [Globalization.CultureInfo]::InvariantCulture
function N($x) { $v = [math]::Round([double]$x, 4); if ([math]::Abs($v) -lt 0.00005) { $v = 0 }; $v.ToString($inv) }
function Mat($rows) { $m = New-Object 'double[,]' 4, 4; for ($i = 0; $i -lt 4; $i++) { for ($k = 0; $k -lt 4; $k++) { $m[$i, $k] = [double]$rows[$i][$k] } }; ,$m }

$j = Get-Content $Json -Raw | ConvertFrom-Json
$parentOf = [ordered]@{ LowerTorso = "HumanoidRootPart"; UpperTorso = "LowerTorso"; Head = "UpperTorso";
    LeftUpperArm = "UpperTorso"; LeftLowerArm = "LeftUpperArm"; LeftHand = "LeftLowerArm";
    RightUpperArm = "UpperTorso"; RightLowerArm = "RightUpperArm"; RightHand = "RightLowerArm";
    LeftUpperLeg = "LowerTorso"; LeftLowerLeg = "LeftUpperLeg"; LeftFoot = "LeftLowerLeg";
    RightUpperLeg = "LowerTorso"; RightLowerLeg = "RightUpperLeg"; RightFoot = "RightLowerLeg" }

# rest rotation / root joint position (Roblox axes)
$restR = @{}; foreach ($n in @($parentOf.Keys) + "HumanoidRootPart") { $restR[$n] = [M3]::Conv((Mat $j.rest.$n)) }
$rootJ = [M3]::ConvP((Mat $j.rest.LowerTorso))

$lines = New-Object System.Collections.Generic.List[string]
foreach ($fr in $j.frames) {
    # world delta rotation of each bone: Rt * Rrest^T
    $d = @{}
    foreach ($n in @($parentOf.Keys) + "HumanoidRootPart") { $d[$n] = [M3]::Mul([M3]::Conv((Mat $fr.bones.$n)), [M3]::T($restR[$n])) }
    $parts = foreach ($n in $parentOf.Keys) {
        $rel = [M3]::Mul([M3]::T($d[$parentOf[$n]]), $d[$n])
        $e = [M3]::EulerZYX($rel)
        $s = "$n={" + (N $e[0]) + "," + (N $e[1]) + "," + (N $e[2])
        if ($n -eq "LowerTorso") {
            # hip displacement: where the root joint goes, minus where it was (in the HRP frame)
            $pt = [M3]::ConvP((Mat $fr.bones.LowerTorso)); $rh = [M3]::ConvP((Mat $j.rest.HumanoidRootPart)); $ph = [M3]::ConvP((Mat $fr.bones.HumanoidRootPart))
            $restRel = @(($rootJ[0] - $rh[0]), ($rootJ[1] - $rh[1]), ($rootJ[2] - $rh[2]))
            $nowRel = [M3]::Apply([M3]::T($d.HumanoidRootPart), @(($pt[0] - $ph[0]), ($pt[1] - $ph[1]), ($pt[2] - $ph[2])))
            $s += "," + (N ($nowRel[0] - $restRel[0])) + "," + (N ($nowRel[1] - $restRel[1])) + "," + (N ($nowRel[2] - $restRel[2]))
        }
        $s + "}"
    }
    $lines.Add("`t{" + ($parts -join ", ") + "},")
}
$lines
