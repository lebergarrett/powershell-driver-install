Add-LocalGroupMember -Group "Administrators" -Member "OLA_Admin"

Invoke-WebRequest -Uri "https://ftp.hp.com/pub/softpaq/sp97001-97500/sp97111.exe" -Outfile "C:\windows\Temp\chipset_drivers.pdf"
Invoke-WebRequest -Uri "https://ftp.hp.com/pub/softpaq/sp113501-114000/sp113551.exe" -Outfile "C:\windows\Temp\audio_drivers.pdf"
Invoke-WebRequest -Uri "https://ftp.hp.com/pub/softpaq/sp113501-114000/sp113697.exe" -Outfile "C:\windows\Temp\video_drivers.pdf"
Invoke-WebRequest -Uri "https://ftp.hp.com/pub/softpaq/sp113001-113500/sp113020.exe" -Outfile "C:\windows\Temp\wlan_drivers.pdf"
Invoke-WebRequest -Uri "https://ftp.hp.com/pub/softpaq/sp112001-112500/sp112462.exe" -Outfile "C:\windows\Temp\hotkey_drivers.pdf"
Invoke-WebRequest -Uri "https://ftp.hp.com/pub/caps-softpaq/cmit/softpaq/CASLSetup.exe" -OutFile "C:\windows\Temp\hotkey_drivers(2).pdf"

Rename-Item -Path "C:\windows\Temp\chipset_drivers.pdf" -NewName "chipset_drivers.exe"
Rename-Item -Path "C:\windows\Temp\audio_drivers.pdf" -NewName "audio_drivers.exe"
Rename-Item -Path "C:\windows\Temp\video_drivers.pdf" -NewName "video_drivers.exe"
Rename-Item -Path "C:\windows\Temp\wlan_drivers.pdf" -NewName "wlan_drivers.exe"
Rename-Item -Path "C:\windows\Temp\hotkey_drivers.pdf" -NewName "hotkey_drivers.exe"
Rename-Item -Path "C:\windows\Temp\hotkey_drivers(2).pdf" -NewName "hotkey_drivers(2).exe"

Write-Host "Installing Chipset drivers..."
Start-Process -Wait -FilePath "C:\windows\Temp\chipset_drivers.exe" -ArgumentList "/s"
Write-Host "Chipsets drivers installed."

Write-Host "Installing Audio drivers..."
Start-Process -Wait -FilePath "C:\windows\Temp\audio_drivers.exe" -ArgumentList "/s"
Write-Host "Audio drivers installed."

Write-Host "Installing Video drivers... (Will need to click install and finish buttons)"
Start-Process -Wait -FilePath "C:\windows\Temp\video_drivers.exe" -ArgumentList "/s"
Write-Host "Video drivers installed."

Write-Host "Installing WLAN drivers..."
Start-Process -Wait -FilePath "C:\windows\Temp\wlan_drivers.exe" -ArgumentList "/s"
Write-Host "WLAN drivers installed."

Write-Host "Installing Hotkey drivers (1)..."
Start-Process -Wait -FilePath "C:\windows\Temp\hotkey_drivers.exe" -ArgumentList "/s"
Write-Host "Hotkey drivers (1) installed"

Write-Host "Installing Hotkey drivers (2)..."
Start-Process -Wait -FilePath "C:\windows\Temp\hotkey_drivers(2).exe" -ArgumentList "/s"
Write-Host "Hotkey drivers (2) installed."

# Remove-Item C:\windows\Temp\chipset_drivers.exe
# Remove-Item C:\windows\Temp\audio_drivers.exe
# Remove-Item C:\windows\Temp\video_drivers.exe
# Remove-Item C:\windows\Temp\wlan_drivers.exe
# Remove-Item C:\windows\Temp\hotkey_drivers.exe
# Remove-Item C:\windows\Temp\hotkey_drivers(2).exe