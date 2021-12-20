$packageName    = 'speedtest'
$url            = 'https://install.speedtest.net/app/cli/ookla-speedtest-1.1.1-win64.zip'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$checksum       = '39a4f97512fda5033ccca28674b009e15056c780ea1c296265391aca4897a494'
$checksumType   = 'sha256'

Install-ChocolateyZipPackage `
  -PackageName $packageName `
  -Url64bit "$url" `
  -UnzipLocation "$toolsDir" `
  -Checksum64 $checksum `
  -ChecksumType64 $checksumType
