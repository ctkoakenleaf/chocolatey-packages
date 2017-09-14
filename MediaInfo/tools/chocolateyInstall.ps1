$packageName = 'mediainfo'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://mediaarea.net/download/current/MediaInfo_GUI_0.7.99_Windows.exe'
$checksum = '8564445159748eeddc69303055634573'
$checksumType = 'md5'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"