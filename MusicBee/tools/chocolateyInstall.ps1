$ErrorActionPreference = "Stop";
$packageName = "musicbee"
$zipFile = "MusicBeeSetup_3_0_Update2.zip"
$exeFile = "MusicBeeSetup_3_0_Update2.exe"
$url = "http://musicbee.niblseed.com/$zipFile"
$checksum = "55974dcd65ed0485d4121c7dba93b14f"
$checksumType  = "md5"
$silentArgs = "/S"
$validExitCodes = @(0)

$chocTempDir = Join-Path $env:TEMP "chocolatey"
$tempDir = Join-Path $chocTempDir "$packageName"
if (![System.IO.Directory]::Exists($tempDir)) {[System.IO.Directory]::CreateDirectory($tempDir)}
$file = Join-Path $tempDir $zipFile

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $file -Url $url -Checksum $checksum -ChecksumType $checksumType
Get-ChocolateyUnzip -FileFullPath $file -Destination $tempDir -PackageName $packageName

$file = Join-Path $tempDir $exeFile

Install-ChocolateyInstallPackage -PackageName $packageName -FileType "exe" -SilentArgs $silentArgs -File $file -ValidExitCodes $validExitCodes