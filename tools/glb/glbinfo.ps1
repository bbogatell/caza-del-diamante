param([string]$Path)
# Reads the JSON chunk of a .glb (or a .gltf) and summarises what the Roblox importer cares about.
if ($Path.ToLower().EndsWith('.glb')) {
  $bytes = [IO.File]::ReadAllBytes($Path)
  $len = [BitConverter]::ToUInt32($bytes, 12)
  $json = [Text.Encoding]::UTF8.GetString($bytes, 20, $len)
} else { $json = [IO.File]::ReadAllText($Path) }
$g = $json | ConvertFrom-Json
"extensionsUsed: " + (($g.extensionsUsed) -join ', ')
"extensionsRequired: " + (($g.extensionsRequired) -join ', ')
"nodes: $($g.nodes.Count)  meshes: $($g.meshes.Count)  skins: $($g.skins.Count)  materials: $($g.materials.Count)  textures: $($g.textures.Count)  images: $($g.images.Count)  animations: $($g.animations.Count)"
"--- materials"
foreach ($m in $g.materials) {
  $p = $m.pbrMetallicRoughness
  $tex = if ($p.baseColorTexture) { "texture#" + $p.baseColorTexture.index } else { "no texture" }
  $fac = if ($p.baseColorFactor) { "factor(" + (($p.baseColorFactor | ForEach-Object { [math]::Round($_, 2) }) -join ',') + ")" } else { "" }
  $ext = if ($m.extensions) { ($m.extensions.PSObject.Properties.Name -join ',') } else { "" }
  $em = if ($m.emissiveFactor) { "emissive(" + (($m.emissiveFactor | ForEach-Object { [math]::Round($_, 2) }) -join ',') + ")" } else { "" }
  "  $($m.name): $tex $fac $em alpha=$($m.alphaMode) ext=[$ext] normal=$([bool]$m.normalTexture) mr=$([bool]$p.metallicRoughnessTexture)"
}
"--- images"
foreach ($i in $g.images) { "  $($i.name) mime=$($i.mimeType) uri=$([bool]$i.uri) bufferView=$($i.bufferView)" }
"--- meshes (attributes / morph targets)"
foreach ($me in $g.meshes) {
  foreach ($pr in $me.primitives) {
    $attrs = $pr.attributes.PSObject.Properties.Name -join ','
    "  $($me.name): [$attrs] targets=$($pr.targets.Count) material=$($pr.material)"
  }
}
"--- skins"
$jointSet = @{}
foreach ($s in $g.skins) { "  $($s.name): $($s.joints.Count) joints"; foreach ($j in $s.joints) { $jointSet[$j] = $true } }
"--- animations"
foreach ($a in $g.animations) {
  $paths = @{}; $nonJoint = @{}
  foreach ($c in $a.channels) {
    $paths[$c.target.path] = 1 + [int]$paths[$c.target.path]
    if (-not $jointSet.ContainsKey([int]$c.target.node)) { $nonJoint[$g.nodes[$c.target.node].name] = $c.target.path }
  }
  $interp = ($a.samplers | ForEach-Object { $_.interpolation } | Sort-Object -Unique) -join ','
  "  '$($a.name)': channels $($a.channels.Count) paths: " + (($paths.GetEnumerator() | ForEach-Object { "$($_.Key)=$($_.Value)" }) -join ' ') + " interp: $interp"
  if ($nonJoint.Count -gt 0) { "     animates NON-bone nodes: " + (($nonJoint.GetEnumerator() | ForEach-Object { "$($_.Key)($($_.Value))" }) -join ', ') }
}
