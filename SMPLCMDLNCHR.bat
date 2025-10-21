@echo off
chcp 65001 >nul
color 3
cls

:menu
cls
title Parabox
echo.
echo Simple CMD Launcher v1.0.0v1 DEVBUILD                                   
echo.
echo Made by Tolerate, Modded by Makeshift
echo.
set /p user=Username: 
echo.
set /p pass=Password: 
echo.

if "%user%"=="Administrator" if "%pass%"=="root" goto success
if "%user%"=="User" if "%pass%"=="user" goto successtwo

echo [!] Invalid Login. Please try again... [!]
pause
goto menu

:success
title Simple CMD Launcher - Currently Logged in as [%user%]
cls
echo.
echo ╔═══════════════════════════════════════════════╗
echo ║                                               ║
echo ║        1 - Netplwiz (Admin)                   ║
echo ║        2 - Cmd (Admin)                        ║
echo ║        3 - Task Manager  (Admin)              ║ 
echo ╚═══════════════════════════════════════════════╝
echo.

set /p a=Select an option [%user%]: 
if "%a%"=="1" goto one
if "%a%"=="2" goto two
if "%a%"=="3" goto three
if "%a%"=="4" goto credits

echo [!] Invalid Choice. Please try again... [!]
pause
goto success

:one
set __compat_layer=runasinvoker
start C:\Windows\System32\Netplwiz.exe
goto success

:two
set __compat_layer=runasinvoker
C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe
goto powershellmode

:three
set __compat_layer=runasinvoker
start C:\Windows\System32\control.exe
goto success

:powershellmode
echo Powershell mode activated, Have Fun!

:successtwo
title Simple CMD Launcher - Currently Logged in as [%user%]
cls
echo.
echo ╔═══════════════════════════════════════════════╗
echo ║                                               ║
echo ║        1 - Netplwiz                           ║
echo ║        2 - Cmd                                ║
echo ║        3 - Task Manager                       ║ 
echo ╚═══════════════════════════════════════════════╝
echo.

set /p a=Select an option [%user%]: 
if "%a%"=="1" goto onenoadmin
if "%a%"=="2" goto twonoadmin
if "%a%"=="3" goto threenoadmin
if "%a%"=="4" goto creditsnoadmin

echo [!] Invalid Choice. Please try again... [!]
pause
goto success

:onenoadmin
start C:\Windows\System32\Netplwiz.exe
goto successtwo

:twonoadmin
C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe
goto powershellmode

:threenoadmin
start C:\Windows\System32\taskmgr.exe
goto successtwo

:powershellmodenoadmin
echo Powershell mode activated, Have Fun!





:credits
echo ╔═══════════════════════════════════════════════╗
echo ║                                               ║
echo ║      Credits go to..                          ║
echo ║      Me! (Makeshift)                          ║
echo ║      and Tolerate! (The OG Creator)           ║
echo ║ Thanks for checking out this old build lol.   ║ 
echo ╚═══════════════════════════════════════════════╝
pause
goto success






:creditsnoadmin
echo ╔═══════════════════════════════════════════════╗
echo ║                                               ║
echo ║      Credits go to..                          ║
echo ║      Me! (Makeshift)                          ║
echo ║      and Tolerate! (The OG Creator)           ║
echo ║ Thanks for checking out this old build lol.   ║ 
echo ╚═══════════════════════════════════════════════╝
pause
goto successtwo

//why are you looking in the code vro fork the og (im still fine with you forking this)