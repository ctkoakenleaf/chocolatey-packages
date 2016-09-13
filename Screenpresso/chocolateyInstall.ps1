
$packageArgs = @{
  packageName    = 'screenpresso'
  fileType       = 'exe'
  url            = 'https://www.screenpresso.com/binaries/Screenpresso.exe'
  url64bit       = 'https://www.screenpresso.com/binaries/Screenpresso.exe'
  silentArgs     = '-install pf -silent'
  validExitCodes = @(0)
  softwareName   = 'Screenpresso'
}

Install-ChocolateyPackage @packageArgs
