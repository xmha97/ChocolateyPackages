$ErrorActionPreference = 'Stop'
# Remove start menu shortcut
$programs = "$env:ProgramData\Microsoft\Windows\Start Menu\Programs\ReactOS"
$shortcutFilePath = Join-Path $programs "Notepad.lnk"
if (Test-Path $shortcutFilePath)
{
    Remove-Item $shortcutFilePath
}
if ((Get-ChildItem $programs | Measure-Object).Count -eq 0)
{
    Remove-Item $programs
}