$packageName = 'mediainfo'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://mediaarea.net/download/binary/mediainfo-gui/0.7.96/MediaInfo_GUI_0.7.96_Windows.exe'
$checksum = '9e390d003541a90d4e4d5f07a0ad3d02'
$checksumType = 'md5'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"