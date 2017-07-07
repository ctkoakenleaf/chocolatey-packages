$packageName = 'mediainfo'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://mediaarea.net/download/binary/mediainfo-gui/0.7.97/MediaInfo_GUI_0.7.97_Windows.exe'
$checksum = '85ffc6ecbeee8ea213d23e9e88826797'
$checksumType = 'md5'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"