
$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'screenpresso'
  unzipLocation = '$(Split-Path -parent $MyInvocation.MyCommand.Definition)'
  fileType       = 'exe'
  url            = '{{DownloadUrl}}'
  url64bit       = '{{DownloadUrl}}'
  softwareName   = 'Screenpresso'
  checksum       = '{{Checksum}}'
  checksumType   = 'sha256'
  checksum64     = '{{Checksumx64}}'
  checksumType64 = 'sha256'

  silentArgs     = '-install pf -silent'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
