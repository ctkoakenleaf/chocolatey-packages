
$packageName = 'lammercontextmenu'
$installerType = 'exe'
$url = 'http://www.wedev4you.com/Downloader.axd?ctx=app&uuid=4a55194a-5830-4cbf-8140-188e76fae213&fn=LammerContextMenu.v.1.0.3.19.zip'
$silentArgs = '/S'

try {    
    $unzipLocation = "$env:TEMP\chocolatey\$packageName"
    if (!(Test-Path $unzipLocation)) {New-Item $unzipLocation -ItemType directory -Force}

    Install-ChocolateyZipPackage $packageName $url $unzipLocation

    $file = "$unzipLocation\LammerContextMenu.v1.0.3.19.exe"
    Install-ChocolateyInstallPackage $packageName $fileType $silentArgs $file
  
    Write-ChocolateySuccess $packageName

} catch {
  Write-ChocolateyFailure $packageName "$($_.Exception.Message)"
  throw 
}