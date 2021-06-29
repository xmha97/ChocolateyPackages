$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

# Install start menu shortcut
$programs = "$env:ProgramData\Microsoft\Windows\Start Menu\Programs\ReactOS"
$shortcutFilePath = Join-Path $programs "Notepad.lnk"
if ([Environment]::Is64BitOperatingSystem)
{
    $targetPath = Join-Path $toolsDir "x64\notepad.exe"
}
else
{
    $targetPath = Join-Path $toolsDir "x86\notepadss.exe"
}
Install-ChocolateyShortcut -shortcutFilePath $shortcutFilePath -targetPath $targetPath
