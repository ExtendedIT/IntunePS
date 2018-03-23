$username = $env:UserName
Invoke-WebRequest -Uri "https://woodhavenpartners.sharepoint.com/:i:/g/EUHYuBPm7PtDoV2X_Lo4gYkB6ZW215InSiaOPIG8MI6HvA?e=VfXyEB" -OutFile "C:\users\$username\wallpaper.jpg"

Function Set-WallPaper($Value)

{

 Set-ItemProperty -path 'HKCU:\Control Panel\Desktop\' -name wallpaper -value $value

 rundll32.exe user32.dll, UpdatePerUserSystemParameters

}

Set-WallPaper -Value "C:\users\$username\wallpaper.jpg"
