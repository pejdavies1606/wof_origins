$wofName="wof_origins"
$timeStamp=$(Get-Date -f "yyyy-MM-dd_HH-mm-ss")
$wofZip="$wofName-$timeStamp.zip"
$wofSrc="src"
$wofDst="_build"
Write-Host "Compressing ..."
Compress-Archive -Path $wofSrc\* -DestinationPath $wofDst\$wofZip
Write-Host "Created $wofDst\$wofZip"
