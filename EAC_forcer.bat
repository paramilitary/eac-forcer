@shift /0
@shift /0
@ECHO OFF
title EAC Forcer by paramilitary
set /a try=1
set ESC=
set Red=%ESC%[31m
set Green=%ESC%[32m
set Yellow=%ESC%[33m
set Blue=%ESC%[34m
set Magenta=%ESC%[35m
set Cyan=%ESC%[36m
set White=%ESC%[37m
set LRed=%ESC%[91m
set LGreen=%ESC%[92m
set LYellow=%ESC%[93m
set LBlue=%ESC%[94m
set LMagenta=%ESC%[95m
set LCyan=%ESC%[96m

echo.
echo %LCyan%  EAC Forcer
echo %LCyan%  Not working everytime, if not you're locked into BE
echo %LCyan%  Made by stefanodvx
echo.
echo %LCyan%  Press any key to start...
pause>nul
:EAC
cls
echo.
echo %LCyan%  Working, please do not do anything (Try n.%try%)
set /a try+=1
tasklist /nh /fi "imagename eq EpicGamesLauncher.exe" | find /i "EpicGamesLauncher.exe" 1>nul 2>nul && (
  taskkill /f /im EpicGamesLauncher.exe 1>nul 2>nul
)
reg delete "HKEY_CURRENT_USER\Software\Epic Games\Unreal Engine\Hardware Survey" /f 1>nul 2>nul
reg delete "HKEY_CURRENT_USER\Software\Epic Games\Unreal Engine\Identifiers" /f 1>nul 2>nul
reg delete "HKU\S-1-5-21-860440266-1445122309-108474356-1001\Software\Epic Games\Unreal Engine\Identifiers" /va /f 1>nul 2>nul
reg delete "HKU\S-1-5-21-860440266-1445122309-108474356-1001\Software\Epic Games\Unreal Engine\Hardware Survey" /va /f 1>nul 2>nul
reg delete "HKEY_CURRENT_USER\Software\Epic Games" /f 1>nul 2>nul
reg delete "HKU\S-1-5-21-860440266-1445122309-108474356-1001\Software\Epic Games" /f 1>nul 2>nul
REG ADD HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName /v ComputerName /t REG_SZ /d FORCEr%random% /f 1>nul 2>nul
REG ADD HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ActiveComputerName /v ComputerName /t REG_SZ /d FORCEr%random% /f 1>nul 2>nul
reg delete "HKEY_CURRENT_USER\Software\Epic Games" /f 1>nul 2>nul
timeout /T 5 /nobreak 1>nul 2>nul
start com.epicgames.launcher://apps/Fortnite?action=launch
:check1
tasklist /nh /fi "imagename eq EasyAntiCheat.exe" | find /i "EasyAntiCheat.exe" 1>nul 2>nul && (
goto done
) || (
  goto check2
)
:check2
tasklist /nh /fi "imagename eq BEService.exe" | find /i "BEService.exe" 1>nul 2>nul && (
timeout /T 2 /nobreak 1>nul 2>nul
taskkill /f /im FortniteClient-Win64-Shipping_BE.exe 1>nul 2>nul
sc stop BEService 1>nul 2>nul
taskkill /f /im EpicGamesLauncher.exe 1>nul 2>nul
) || (
  goto check1
)
powershell -Command "Set-Date -Date (Get-Date).AddDays(1) | Out-Null"
timeout /T 3 /nobreak 1>nul 2>nul
cls
goto EAC

:done
cls
taskkill /f /im FortniteClient-Win64-Shipping_EAC.exe 1>nul 2>nul
taskkill /f /im EasyAntiCheat.exe 1>nul 2>nul
taskkill /f /im FortniteLauncher.exe 1>nul 2>nul
taskkill /f /im EpicGamesLauncher.exe 1>nul 2>nul
echo.
echo %LCyan%  EAC is forced! Now you can start Fortnite manually (Steam method works too)
pause >nul
