## Script to download and install drivers on HP Elitebook 745 G6 (Those that aren't included in the base image we use)

1. Sign into `USAF_Admin`
2. Use a browser to navigate to this repo `https://github.com/lebergarrett/driver-install-script`
3. Click on green download `Code` button
4. Download Zip, save in downloads
5. Open Zip, open driver-install-script folder, copy .ps1 files to Desktop
6. Open Powershell as Admin
7. `cd C:\Users\USAF_Admin\Desktop`
8. `.\main.ps1`
    - If `main` script has issues during the download portion, rerun the main script.
    - If `main` script has issues during the install portion, you may run the supplied `only-install.ps1` script using `.\only-install.ps1`
    - Once you have successfully ran the script(s) and installed the drivers, move forward:
9. Restart PC
10. Enter BIOS (F10), enable webcam, save and exit
11. Sign into `OLA_Admin` (The script should have made this account an admin now.)
12. Verify hotkeys work by trying to use them for changing brightness
13. Open Device Manager
14. Find `AMD High Definition Audio Controller`
    - If there is a warning(small triangle icon) by it:
        - Right click > Update driver > Browse my computer > Let me pick from a list... > Choose `High Definition Audio Controller` > Next > Close
    - If no warning, proceed.
15. Verify that the are no warnings near any of the other drivers
16. You are done!
