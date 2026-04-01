:: please run to clean up whatever artifacts the malware may have left behind

@echo off
echo ================================
echo Cleaning malware artifacts...
echo ================================

:: Kill malware process
taskkill /IM Amraj_malware.exe /F >nul 2>&1

:: Kill spawned notepad (injection demo)
taskkill /IM notepad.exe /F >nul 2>&1

:: Remove persistence (registry Run key)
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" ^/v "FLAG{PERSISTENCE_RUNKEY_RANDHAWA_4484}" /f >nul 2>&1

:: Remove dropped file
del artifact.txt >nul 2>&1

:: Remove temp folder if empty
rmdir C:\temp >nul 2>&1

echo Cleanup complete.
pause