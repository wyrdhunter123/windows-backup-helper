@echo off
cd /d "%~dp0"
if errorlevel 1 goto failed

echo Starting my practice backup.
if not exist "practice-files\*.txt" goto missing
if not exist "backup\" mkdir "backup"
if not exist "backup\" goto failed

copy /Y "practice-files\*.txt" "backup\"
if errorlevel 1 goto failed

echo Backup finished. Open the files to check them.
goto end

:missing
echo No text files found in practice-files.
echo Check the folder name and add a .txt file.
goto end

:failed
echo Backup did not finish. Read the message above.
echo Check folder names and write permission.

:end
echo Remember to open the backup files and check your words.
pause