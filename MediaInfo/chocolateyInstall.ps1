
$packageName = 'mediainfo'
$installerType = 'exe'
$url = 'http://mediaarea.net/download/binary/mediainfo-gui/0.7.70/MediaInfo_GUI_0.7.70_Windows.exe'
$url64 = $url
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes
