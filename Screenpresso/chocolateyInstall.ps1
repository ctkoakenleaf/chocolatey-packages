
$packageName = 'screenpresso'
$installerType = 'msi'
$url = 'http://www.screenpresso.com/binaries/ScreenpressoSetup.msi'
$url64 = $url
$silentArgs = '/qb'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes
