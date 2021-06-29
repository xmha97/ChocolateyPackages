$ErrorActionPreference = 'Stop'
$packageName = 'singleinstance'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName            = $packageName
  fileType               = 'EXE'
  url64bit               = 'https://github.com/zenden2k/context-menu-launcher/releases/download/1.0/singleinstance.exe'
  checksum64             = '4b4f67775bbea06041e17cdd429fe2f0d7b8039b4a5a0f6ef262d14578519662'
  checksumType64         = 'sha256'
  softwareName           = 'singleinstance'
}

Get-ChocolateyWebFile `
    -PackageName 'SingleInstance' `
    -FileFullPath "$toolsDir\singleinstance.exe" `
    -Url64 $packageArgs.url64bit `
    -Checksum64 $packageArgs.checksum64 `
    -ChecksumType64 $packageArgs.checksumType64 `
    -ForceDownload
