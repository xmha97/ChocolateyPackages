$packageName    = 'PersianBingCalendar'
$url            = "https://github.com/VahidN/PersianBingCalendar/releases/download/V$env:ChocolateyPackageVersion/PersianBingCalendar.V2.2-update-2.zip"
$toolsDir       = "$env:LOCALAPPDATA\PersianBingCalendar"
$checksum       = '090ec9226768fc54470ad01e97ae5d01508f5a2228ab6b4d1b4265dcff494a64'
$checksumType   = 'sha256'

Install-ChocolateyZipPackage `
  -PackageName $packageName `
  -Url "$url" `
  -UnzipLocation "$toolsDir" `
  -Checksum $checksum `
  -ChecksumType $checksumType

Start-Process -FilePath "$toolsDir\PersianBingCalendar.exe"