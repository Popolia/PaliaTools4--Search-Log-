@echo off

:: Utilisez la variable %USERPROFILE% pour obtenir le profil utilisateur actuel
set "userProfile=%USERPROFILE%"

:: Chemin du dossier des fichiers de journal Palia
set "logFolderPath=%userProfile%\AppData\Local\Palia\Saved\Logs"

:: Rechercher le dernier fichier journal Palia dans le dossier
for /f %%f in ('dir /b /od "%logFolderPath%\Palia*.log"') do (
    set "latestLogFile=%%f"
)

:: Vérifier si le fichier journal le plus récent existe
if defined latestLogFile (
    set "logFilePath=%logFolderPath%\!latestLogFile!"
    start "" "%logFilePath%"
) else (
    echo Aucun fichier journal Palia n'a été trouvé.
    echo No Palia log files were found.
)

:: Ligne de commande "pause" pour maintenir la fenêtre ouverte
pause
