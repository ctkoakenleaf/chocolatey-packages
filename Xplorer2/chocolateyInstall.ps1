
$packageName = 'xplorer2'
$installerType = 'exe'
$url = 'http://zabkat.com/xplorer2_lite_setup.exe'
$url64 = $url
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes
