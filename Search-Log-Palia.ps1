# Chemin du fichier Palia.log
$logFilePath = "C:\Users\Admin\AppData\Local\Palia\Saved\Logs\Palia.log"

# Vérifier si le fichier existe
if (Test-Path -Path $logFilePath) {
    Start-Process -FilePath $logFilePath
} else {
    Write-Host "Le fichier Palia.log n'a pas été trouvé."
    Write-Host "The Palia.log file was not found."
}

# Attendre 2 secondes (ajustable)
Start-Sleep -Seconds 2
