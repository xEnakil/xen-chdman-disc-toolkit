@echo off
setlocal

:: Set the source and destination paths
set "SOURCE_FOLDER=%~dp0Games"
set "DEST_FOLDER=%~dp0Compressed"

:: Create destination folder if it doesn't exist
if not exist "%DEST_FOLDER%" mkdir "%DEST_FOLDER%"

:: Process all matching files in source folder and subfolders
for /r "%SOURCE_FOLDER%" %%i in (*.cue *.gdi *.iso) do (
    echo Processing: "%%i"
    chdman createcd -i "%%i" -o "%DEST_FOLDER%\%%~ni.chd"
)

echo Compression complete!
pause