param([string]$Path, [string]$OutDir)
# Extracts from a .glb: the embedded images (PNG) and the skeleton + first animation as JSON
# (rest TRS of every joint node, its parent, and per-channel keyframes).
New-Item -ItemType Directory -Force $OutDir | Out-Null
$bytes = [IO.File]::ReadAllBytes($Path)
$jsonLen = [BitConverter]::ToUInt32($bytes, 12)
$json = [Text.Encoding]::UTF8.GetString($bytes, 20, $jsonLen)
$binStart = 20 + $jsonLen + 8 # skip BIN chunk header (length + type)
$g = $json | ConvertFrom-Json

function Read-Accessor($idx) {
  $acc = $g.accessors[$idx]
  $bv = $g.bufferViews[$acc.bufferView]
  $off = $binStart + [int]$bv.byteOffset + [int]$acc.byteOffset
  $n = @{ SCALAR = 1; VEC2 = 2; VEC3 = 3; VEC4 = 4 }[$acc.type]
  $stride = if ($bv.byteStride) { [int]$bv.byteStride } else { 4 * $n }
  if ($acc.componentType -ne 5126) { throw "accessor $idx is not float" }
  $out = New-Object 'System.Collections.Generic.List[double]'
  for ($i = 0; $i -lt $acc.count; $i++) {
    for ($k = 0; $k -lt $n; $k++) { $out.Add([Math]::Round([BitConverter]::ToSingle($bytes, $off + $i * $stride + 4 * $k), 5)) }
  }
  return ,$out.ToArray()
}

# images
for ($i = 0; $i -lt $g.images.Count; $i++) {
  $im = $g.images[$i]
  $bv = $g.bufferViews[$im.bufferView]
  $data = New-Object byte[] ([int]$bv.byteLength)
  [Array]::Copy($bytes, $binStart + [int]$bv.byteOffset, $data, 0, [int]$bv.byteLength)
  [IO.File]::WriteAllBytes((Join-Path $OutDir ($im.name + '.png')), $data)
}

# skeleton
$parent = @{}
for ($i = 0; $i -lt $g.nodes.Count; $i++) { foreach ($c in $g.nodes[$i].children) { $parent[[int]$c] = $i } }
$skin = $g.skins[0]
$joints = @()
foreach ($j in $skin.joints) {
  $nd = $g.nodes[$j]
  $joints += [ordered]@{
    name = $nd.name
    parent = if ($parent.ContainsKey([int]$j)) { $g.nodes[$parent[[int]$j]].name } else { $null }
    t = if ($nd.translation) { $nd.translation } else { @(0, 0, 0) }
    r = if ($nd.rotation) { $nd.rotation } else { @(0, 0, 0, 1) }
    s = if ($nd.scale) { $nd.scale } else { @(1, 1, 1) }
  }
}
# root chain above the joints (armature node etc.)
$anim = $g.animations[0]
$channels = @()
foreach ($c in $anim.channels) {
  $smp = $anim.samplers[$c.sampler]
  $channels += [ordered]@{
    node = $g.nodes[$c.target.node].name
    path = $c.target.path
    interp = $smp.interpolation
    times = Read-Accessor $smp.input
    values = Read-Accessor $smp.output
  }
}
$result = [ordered]@{ animation = $anim.name; joints = $joints; channels = $channels }
($result | ConvertTo-Json -Depth 6 -Compress) | Out-File -Encoding utf8 (Join-Path $OutDir 'anim.json')
"images: " + (($g.images | ForEach-Object { $_.name }) -join ', ')
"joints: " + (($joints | ForEach-Object { $_.name }) -join ', ')
"channels: " + (($channels | ForEach-Object { $_.node + '.' + $_.path + '(' + $_.times.Count + ')' }) -join ', ')
$maxT = ($channels | ForEach-Object { $_.times[-1] } | Measure-Object -Maximum).Maximum
"duration: $maxT s"
