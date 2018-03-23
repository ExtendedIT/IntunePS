$username = $ENV:UserProfile

if (Test-Path -Path $username\AppData\Local\Microsoft\Teams\Current\Teams.exe){

        Write-Host "Teams already installed"
    
} 
else {

    if ([System.IntPtr]::Size -eq 4) {

            Write-Host "System is 32-bit"
            Invoke-WebRequest -Uri "https://statics.teams.microsoft.com/production-windows/1.1.00.5855/Teams_windows.exe" -OutFile "$username\Downloads\Teams_Windows.exe"
            $teams = "$username\Downloads\Teams_Windows.exe"
            

         } else { 
            Invoke-WebRequest -Uri "https://statics.teams.microsoft.com/production-windows-x64/1.1.00.5855/Teams_windows_x64.exe" -OutFile "$username\Downloads\Teams_Windows.exe"
            $teams = "$username\Downloads\Teams_Windows_x64.exe"
            Write-Host "System is 64-bit"
          }

          #Install
          & $teams -s
}
