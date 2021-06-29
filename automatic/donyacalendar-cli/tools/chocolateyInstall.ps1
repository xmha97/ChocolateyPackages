$packageName    = 'donyacalendar-cli'
$url            = 'https://github.com/xmha97/donyacalendar-cli/releases/download/v1.0.0/donyacalendar-cli.1.0.0.zip'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$checksum       = '1BC6392B683BC37E80D462C10D4101513BDAFE7684C5B76A5271379DF7D30DA5'
$checksumType   = 'sha256'

Install-ChocolateyZipPackage `
  -PackageName $packageName `
  -Url64bit "$url" `
  -UnzipLocation "$toolsDir" `
  -Checksum64 $checksum `
  -ChecksumType64 $checksumType
