@echo off

NET SESSION >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    ECHO Please run as Administrator
    pause
    exit
)

cd /d %~dp0

regsvr32 CpuRam.dll
regsvr32 DiskSpeed.dll
regsvr32 NetSpeed.dll
