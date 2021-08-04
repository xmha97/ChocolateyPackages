$packageName    = 'speedtest'
$url            = 'https://install.speedtest.net/app/cli/ookla-speedtest-1.0.0-win64.zip'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$checksum       = '64054a021dd7d49e618799a35ddbc618dcfc7b3990e28e513a420741717ac1ad'
$checksumType   = 'sha256'

Install-ChocolateyZipPackage `
  -PackageName $packageName `
  -Url64bit "$url" `
  -UnzipLocation "$toolsDir" `
  -Checksum64 $checksum `
  -ChecksumType64 $checksumType
