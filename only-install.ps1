$driverList = @{
    chipset = "https://ftp.hp.com/pub/softpaq/sp97001-97500/sp97111.exe"
    audio = "https://ftp.hp.com/pub/softpaq/sp113501-114000/sp113551.exe"
    video = "https://ftp.hp.com/pub/softpaq/sp113501-114000/sp113697.exe"
    wlan = "https://ftp.hp.com/pub/softpaq/sp113001-113500/sp113020.exe"
    hotkey_1 = "https://ftp.hp.com/pub/softpaq/sp112001-112500/sp112462.exe"
    hotkey_2 = "https://ftp.hp.com/pub/caps-softpaq/cmit/softpaq/CASLSetup.exe"
}

foreach($key in $driverList.Keys){
    Write-Host "Installing $key drivers..." -ForegroundColor Yellow
    Start-Process -Wait -FilePath "C:\windows\Temp\$key.exe" -ArgumentList "/s"
    Write-Host "$key drivers installed." -ForegroundColor Green
}
Write-Host "All drivers installed." -ForegroundColor Green