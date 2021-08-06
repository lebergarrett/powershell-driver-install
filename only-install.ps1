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