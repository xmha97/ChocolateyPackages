$ErrorActionPreference = 'Stop'

$packageName    = 'ooniprobe-cli'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$baseURL        = "https://github.com/ooni/probe-cli/releases/download/v$env:ChocolateyPackageVersion/ooniprobe_v" + "$env:ChocolateyPackageVersion"
$url            = $baseURL + "_windows_386.zip"
$url64          = $baseURL + "_windows_amd64.zip"

$checksum       = '218BC2CD7D9CA28BDDA61C0CABF73AA67DA3C395B73713B643EBE5DFFF396D63'
$checksum64     = '7294E07E3BBAC85CAEDD75581656A3830A0239ED6AB0413BA6FDD5032CC156BE'

$checksumType   = 'sha256'
$checksumType64 = 'sha256'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"