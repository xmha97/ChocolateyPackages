$ErrorActionPreference = 'Stop'
$packageName  = 'yakyak'
$ShortcutName = 'yakyak'

Remove-Item "$ENV:Public\Desktop\$ShortcutName.lnk" -Force -ErrorAction SilentlyContinue
Remove-Item "$ENV:ProgramData\Microsoft\Windows\Start Menu\Programs\$ShortcutName.lnk" -Force -ErrorAction SilentlyContinue
