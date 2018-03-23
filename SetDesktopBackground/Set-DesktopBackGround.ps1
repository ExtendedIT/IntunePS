$username = $env:UserName
Invoke-WebRequest -Uri "{Add URL to Wallpaper file here}" -OutFile "C:\users\$username\wallpaper.jpg"

Function Set-WallPaper($Value)

{

 Set-ItemProperty -path 'HKCU:\Control Panel\Desktop\' -name wallpaper -value $value

 rundll32.exe user32.dll, UpdatePerUserSystemParameters

}

Set-WallPaper -Value "C:\users\$username\wallpaper.jpg"
