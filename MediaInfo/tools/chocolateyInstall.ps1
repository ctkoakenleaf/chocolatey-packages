$packageName = 'mediainfo'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://mediaarea.net/download/current/MediaInfo_GUI_0.7.98_Windows.exe'
$checksum = '78f74dabb07c9c96f17ff342c193e152'
$checksumType = 'md5'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"