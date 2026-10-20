param([string]$Json, [string]$Out, [int]$Step = 2, [string[]]$Skip = @('Float'))
# Turns the extracted glTF animation into a compact Lua table literal (invariant decimals).
$inv = [Globalization.CultureInfo]::InvariantCulture
function F($x) { return ([double]$x).ToString('0.###', $inv) }
$j = Get-Content $Json -Raw | ConvertFrom-Json
$sb = New-Object Text.StringBuilder
[void]$sb.Append('return {joints = {')
foreach ($x in $j.joints) {
  $p = if ($x.parent) { '"' + $x.parent + '"' } else { 'nil' }
  [void]$sb.Append('{"' + $x.name + '",' + $p + ',' + (($x.t | ForEach-Object { F $_ }) -join ',') + ',' + (($x.r | ForEach-Object { F $_ }) -join ',') + '},')
}
[void]$sb.Append('}, channels = {')
$dt = $null
foreach ($c in $j.channels) {
  if ($Skip -contains $c.node) { continue }
  $n = if ($c.path -eq 'rotation') { 4 } else { 3 }
  $vals = New-Object System.Collections.Generic.List[string]
  for ($i = 0; $i -lt $c.times.Count; $i += $Step) {
    for ($k = 0; $k -lt $n; $k++) { $vals.Add((F $c.values[$i * $n + $k])) }
  }
  if (-not $dt) { $dt = [double]$c.times[$Step] - [double]$c.times[0] }
  [void]$sb.Append('{"' + $c.node + '","' + $c.path + '",{' + ($vals -join ',') + '}},')
}
[void]$sb.Append('}, dt = ' + (F $dt) + '}')
[IO.File]::WriteAllText($Out, $sb.ToString())
"chars: " + $sb.Length + " dt: " + $dt

