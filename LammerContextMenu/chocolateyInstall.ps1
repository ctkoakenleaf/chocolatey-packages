
$packageName = 'lammercontextmenu'
$installerType = 'exe'
$url = 'http://www.wedev4you.com/Downloader.axd?ctx=app&uuid=91a64beb-1d36-4d2d-bf75-586a038363d8&fn=LammerContextMenu.v.1.0.3.17.zip'
$silentArgs = '/S'

try {    
    $unzipLocation = "$env:TEMP\chocolatey\$packageName"
    if (!(Test-Path $unzipLocation)) {New-Item $unzipLocation -ItemType directory -Force}

    Install-ChocolateyZipPackage $packageName $url $unzipLocation

    $file = "$unzipLocation\LammerContextMenu.v1.0.3.17.exe"
    Install-ChocolateyInstallPackage $packageName $fileType $silentArgs $file
  
    Write-ChocolateySuccess $packageName

} catch {
  Write-ChocolateyFailure $packageName "$($_.Exception.Message)"
  throw 
}