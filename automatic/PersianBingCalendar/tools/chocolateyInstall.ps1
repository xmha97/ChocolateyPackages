$packageName    = 'PersianBingCalendar'
$url            = "https://github.com/VahidN/PersianBingCalendar/releases/download/V$env:ChocolateyPackageVersion/PersianBingCalendar.V$env:ChocolateyPackageVersion.zip"
$toolsDir       = "$env:LOCALAPPDATA\PersianBingCalendar"
$checksum       = 'cfddf09d87d74c62281554effe51d638395367c92aca85399479d9e0410b620b'
$checksumType   = 'sha256'

Install-ChocolateyZipPackage `
  -PackageName $packageName `
  -Url "$url" `
  -UnzipLocation "$toolsDir" `
  -Checksum $checksum `
  -ChecksumType $checksumType

Start-Process -FilePath "$toolsDir\PersianBingCalendar.exe"