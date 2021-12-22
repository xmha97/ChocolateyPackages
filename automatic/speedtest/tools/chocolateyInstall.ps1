$ErrorActionPreference = 'Stop';
$toolsDir   =	 "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$PackageParameters = Get-PackageParameters

### PARAMETERS
If ($PackageParameters.InstallDir) {
  $installDir = $PackageParameters.InstallDir
} else {
  $installDir = "$toolsDir"
}

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = "$installDir"
  url            = 'https://install.speedtest.net/app/cli/ookla-speedtest-1.1.1-win64.zip'
  checksum       = '39a4f97512fda5033ccca28674b009e15056c780ea1c296265391aca4897a494'
  checksumType   = 'sha256'
}
Install-ChocolateyZipPackage @packageArgs

$targetPath = Join-Path "$installDir" "LosslessCut.exe"

# Add StartMenu shortcut
If ( $PackageParameters.StartMenuShortcut ) {
  $programsPath = "$env:ProgramData\Microsoft\Windows\Start Menu\Programs\"
  $programsFilePath = Join-Path "$programsPath" "Speedtest CLI.lnk"
  Install-ChocolateyShortcut -shortcutFilePath "$programsFilePath" -targetPath "$targetPath"
}