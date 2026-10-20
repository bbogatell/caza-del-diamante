param([string]$Dir, [int]$Port = 8766)
# Serves the PNG files of a folder on http://localhost:<port>/<file>.png until /quit is requested.
$l = New-Object System.Net.HttpListener
$l.Prefixes.Add("http://localhost:$Port/")
$l.Start()
while ($l.IsListening) {
  $ctx = $l.GetContext()
  $name = [IO.Path]::GetFileName($ctx.Request.Url.AbsolutePath)
  $res = $ctx.Response
  if ($name -eq 'quit') { $res.Close(); break }
  $f = Join-Path $Dir $name
  if (($name -like '*.png' -or $name -like '*.lua') -and (Test-Path $f)) {
    $b = [IO.File]::ReadAllBytes($f); $res.ContentType = $(if ($name -like '*.png') { 'image/png' } else { 'text/plain' }); $res.OutputStream.Write($b, 0, $b.Length)
  } else { $res.StatusCode = 404 }
  $res.Close()
}
$l.Stop()
