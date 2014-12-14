
$packageName = 'directorymonitor'
$installerType = 'exe'
$url = 'http://www.deventerprise.net/Download/DirectoryMonitor2/DirectoryMonitor2_Setup.exe'
$url64 = $url
$silentArgs = '/sp- /silent /norestart'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes
