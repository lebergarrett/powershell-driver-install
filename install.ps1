Start-Process -Wait -FilePath "chipset_drivers.exe" -ArgumentList "/s"
Start-Process -Wait -FilePath "audio_drivers.exe" -ArgumentList "/s"
Start-Process -Wait -FilePath "video_drivers.exe" -ArgumentList "/s"
Start-Process -Wait -FilePath "wlan_drivers.exe" -ArgumentList "/s"
Start-Process -Wait -FilePath "hotkey_drivers.exe" -ArgumentList "/s"