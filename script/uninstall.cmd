@echo off

NET SESSION >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    ECHO Please run as Administrator
    pause
    exit
)

cd /d %~dp0

regsvr32 /u CpuRam.dll
regsvr32 /u DiskSpeed.dll
regsvr32 /u NetSpeed.dll

taskkill /F /IM explorer.exe & start explorer
start %~dp0
