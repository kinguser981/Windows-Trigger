color 02

@echo Clean Windows logs

wevtutil cl security

wevtutil cl application

wevtutil cl setup

wevtutil cl system

@echo Done

taskkill /f /IM msedge.exe

taskkill /f /IM msedgewebview2.exe

erase "%TEMP%\*.*" /f /s /q

for /D %%i in ("%TEMP%\*") do RD /S /Q "%%i"

erase "%TMP%\*.*" /f /s /q

for /D %%i in ("%TMP%\*") do RD /S /Q "%%i"

erase "%ALLUSERSPROFILE%\TEMP\*.*" /f /s /q

for /D %%i in ("%ALLUSERSPROFILE%\TEMP\*") do RD /S /Q "%%i"

erase "%SystemRoot%\TEMP\*.*" /f /s /q

for /D %%i in ("%SystemRoot%\TEMP\*") do RD /S /Q "%%i"

@rem Clear IE cache - (Deletes Temporary Internet Files Only)

RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8

erase "%LOCALAPPDATA%\Microsoft\Windows\Tempor~1\*.*" /f /s /q

for /D %%i in ("%LOCALAPPDATA%\Microsoft\Windows\Tempor~1\*") do RD /S /Q "%%i"

@rem Clear Google Chrome cache

erase "%LOCALAPPDATA%\Google\Chrome\User Data\*.*" /f /s /q

for /D %%i in ("%LOCALAPPDATA%\Google\Chrome\User Data\*") do RD /S /Q "%%i"

@rem Clear Firefox cache

erase "%LOCALAPPDATA%\Mozilla\Firefox\Profiles\*.*" /f /s /q

for /D %%i in ("%LOCALAPPDATA%\Mozilla\Firefox\Profiles\*") do RD /S /Q "%%i"

@rem Add high performence

powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61

@echo off

@echo

ipconfig /flushdns

@echo

@echo off

cd/

@echo

del *.log /a /s /q /f

@echo off

echo Batch File By Trimors

RD /S /Q %temp%

MKDIR %temp%

takeown /f "%temp%" /r /d y

takeown /f "C:\Windows\Temp" /r /d y

RD /S /Q C:\Windows\Temp

MKDIR C:\Windows\Temp

takeown /f "C:\Windows\Temp" /r /d y

takeown /f %temp% /r /d y

@echo off

@echo Made by Everything

@echo Disable HPET

bcdedit /deletevalue useplatformclock

@echo

@echo Disable dynamic tick

bcdedit /set disabledynamictick yes

@echo

@echo Disable synthetic timers

bcdedit /set useplatformtick yes

@echo Clear Microsoft edge cache

rmdir /q /s "%localappdata%MicrosoftEdgeUser DataDefault"

rmdir %LOCALAPPDATA%PackagesMicrosoft.MicrosoftEdge_8wekyb3d8bbweAC /s /q

@echo Clean Windows logs Again!!!

wevtutil cl security

wevtutil cl application

wevtutil cl setup

wevtutil cl system

@echo Done!

pause﻿
