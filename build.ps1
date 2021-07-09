$wofName = "wof_origins"
$timeStamp = $(Get-Date -f "yyyy-MM-dd_HH-mm-ss")
$wofZip = "$wofName-$timeStamp.zip"
$wofRoot = $PWD
$wofSrc = "$wofRoot/src"
$wofDst = "$wofRoot/_build"
$zipProg = Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* | Where-Object {$_.DisplayName -like "7-Zip*"}
if (!$zipProg)
{
  Write-Host "Please install [7-zip](https://www.7-zip.org)."
}
else
{
  Set-Location $wofSrc
  Write-Host "Compressing ..."
  7z a $wofDst\$wofZip . 
  Write-Host "Created $wofDst\$wofZip"
}
