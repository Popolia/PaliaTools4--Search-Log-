@echo off

:: Utilisez la variable %USERPROFILE% pour obtenir le profil utilisateur actuel
set "userProfile=%USERPROFILE%"

:: Chemin du fichier Palia.log générique pour tous les utilisateurs
set "logFilePath=%userProfile%\AppData\Local\Palia\Saved\Logs\Palia.log"

:: Vérifier si le fichier existe
if exist "%logFilePath%" (
    start "" "%logFilePath%"
) else (
    echo Le fichier Palia.log n'a pas été trouvé.
    echo The Palia.log file was not found.
)

:: Ligne de commande "pause" pour maintenir la fenêtre ouverte
pause
