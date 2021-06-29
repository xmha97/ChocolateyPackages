$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = "https://github.com/rastikerdar/vazir-code-font/releases/download/v$env:ChocolateyPackageVersion/vazir-code-font-v$env:ChocolateyPackageVersion.zip"
$myChecksum = '5c10819faef1d281db03703a82d498815b3d73b83badfa3100f9bbcd893b071e'

$packageArgs = @{
  softwareName  = 'Vazir Code font'
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  checksumType  = 'sha256'
  checksum      = $myChecksum
}

Install-ChocolateyZipPackage @packageArgs

Install-ChocolateyFont $toolsDir -multiple