$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

# Install start menu shortcut
$programs = "$env:ProgramData\Microsoft\Windows\Start Menu\Programs\ReactOS"
$shortcutFilePath = Join-Path $programs "Paint.lnk"
if ([Environment]::Is64BitOperatingSystem)
{
    $targetPath = Join-Path $toolsDir "x64\mspaint.exe"
}
else
{
    $targetPath = Join-Path $toolsDir "x86\mspaint.exe"
}
Install-ChocolateyShortcut -shortcutFilePath $shortcutFilePath -targetPath $targetPath
