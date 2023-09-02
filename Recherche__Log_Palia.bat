@echo off

echo Recherche de log, Log search
timeout /t 1 /nobreak


:: Chemin du fichier Palia.log
set "logFilePath=C:\Users\Admin\AppData\Local\Palia\Saved\Logs\Palia.log"

:: Vérifier si le fichier existe
if exist "%logFilePath%" (
    start "" "%logFilePath%"
) else (
    echo Le fichier Palia.log n'a pas été trouvé.
    echo The Palia.log file was not found.
)

:: Attendre 2 secondes (ajustable)
timeout /t 2 >nul

:: Fermer automatiquement la fenêtre de l'invite de commande
exit

pause
