Stop-Process -name PersianBingCalendar
Remove-Item -Path "$env:LOCALAPPDATA\PersianBingCalendar" -Recurse -Force
Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Run" -Name "PersianBingCalendar"
Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Personalization" -Name "LockScreenImage"