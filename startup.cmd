PowerShell -Command "Set-ExecutionPolicy Unrestricted" >> "%TEMP%\StartupLog.txt" 2>&1
PowerShell C:\Users\Administrator\Desktop\extend.ps1 >> "%TEMP%\StartupLog.txt" 2>&1
(goto) 2>nul & del "%~f0"