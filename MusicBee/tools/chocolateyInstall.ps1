$ErrorActionPreference = "Stop";
$packageName = "musicbee"
$zipFile = "MusicBeeSetup_3_1.zip"
$exeFile = "MusicBeeSetup_3_1.exe"
$url = "http://musicbee.niblseed.com/$zipFile"
$checksum = "f3aead463576c697d08946574535f1cc"
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