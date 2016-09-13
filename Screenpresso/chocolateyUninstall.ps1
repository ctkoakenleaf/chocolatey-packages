  
$packageArgs = @{
  packageName    = 'screenpresso'
  fileType       = 'exe'
  silentArgs     = '-uninstall pf -silent'
  validExitCodes = @(0)
  softwareName   = 'Screenpresso'
  file           = $env:programfiles + '\Learnpulse\Screenpresso\Screenpresso.exe'
}

Uninstall-ChocolateyPackage @packageArgs