$ErrorActionPreference = 'Stop'

$packageName    = 'jsshell'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url            = "http://ftp.mozilla.org/pub/firefox/releases/$env:ChocolateyPackageVersion/jsshell/jsshell-win32.zip"
$url64          = "http://ftp.mozilla.org/pub/firefox/releases/$env:ChocolateyPackageVersion/jsshell/jsshell-win64.zip"
#$url64aarch     = "http://ftp.mozilla.org/pub/firefox/releases/$env:ChocolateyPackageVersion/jsshell/jsshell-win64-aarch64.zip"

$checksum       = 'c4d87441c28ad54240f26d73ff60a98740b2134d4a4ea42ca3628dfd16671692'
$checksum64     = 'f1795aecb15127818e68582a64feb51df3c68f9cc47de02460769a59d56f7ed3'

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
