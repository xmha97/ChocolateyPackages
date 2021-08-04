$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = "https://github.com/rastikerdar/vazir-font/releases/download/v$env:ChocolateyPackageVersion/vazir-font-v$env:ChocolateyPackageVersion.zip"
$myChecksum = '1bee67cac9a6ac4f16bd3c91d1f1b990c5e803fc0cab3c63ca05531c9f759b48'

$packageArgs = @{
  softwareName  = 'Vazir font'
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  checksumType  = 'sha256'
  checksum      = $myChecksum
}

Install-ChocolateyZipPackage @packageArgs

Install-ChocolateyFont $toolsDir -multiple