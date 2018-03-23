#Sets Screen saver to blank
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v SCRNSAVE.EXE /t REG_SZ /d C:\Windows\system32\scrnsave.scr /f
#Set Lockout Time Here in Seconds
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v ScreenSaveTimeOut /t REG_SZ /d 600 /f
#Sets it to lockout on resume from ScreenSaver
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v ScreenSaverIsSecure /t REG_SZ /d 1 /f

rundll32.exe user32.dll, UpdatePerUserSystemParameters
