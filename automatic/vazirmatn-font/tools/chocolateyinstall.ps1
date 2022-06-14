$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = "https://github.com/rastikerdar/Vazirmatn/releases/download/v$env:ChocolateyPackageVersion/Vazirmatn-v$env:ChocolateyPackageVersion.zip"
$myChecksum = 'bac8e08a6592db13c19bb740a901550e60862defc9cece0a8a35d7b36e024467'

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