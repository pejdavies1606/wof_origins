$wofName = "wof_origins"
$timeStamp = $(Get-Date -f "yyyy-MM-dd_HH-mm-ss")
$wofZip = "$wofName-$timeStamp.zip"
$wofRoot = $PWD
$wofSrc = "$wofRoot\src"
$wofDst = "$wofRoot\_build"
$zipProg = where.exe 7z*.exe 2>$null
if (!$zipProg)
{
  Write-Error "7-zip not found. Please install standalone console version of [7-zip](https://www.7-zip.org/download.html) and add to PATH."
}
else
{
  Set-Location $wofSrc
  Write-Host "Compressing ..."
  & $zipProg a $wofDst\$wofZip .
  Write-Host "Created $wofDst\$wofZip"
}
