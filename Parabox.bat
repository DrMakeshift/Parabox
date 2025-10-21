@echo off
chcp 65001 >nul
color 3
cls

:menu
cls
title Parabox
echo               
echo ██████╗  █████╗ ██████╗  █████╗ ██████╗  ██████╗ ██╗  ██╗
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔═══██╗╚██╗██╔╝
echo ██████╔╝███████║██████╔╝███████║██████╔╝██║   ██║ ╚███╔╝ 
echo ██╔═══╝ ██╔══██║██╔══██╗██╔══██║██╔══██╗██║   ██║ ██╔██╗ 
echo ██║     ██║  ██║██║  ██║██║  ██║██████╔╝╚██████╔╝██╔╝ ██╗
echo ╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝  ╚═════╝ ╚═╝  ╚═╝
                                                         
echo                                     v1.0.1_v2 PUBLICRELEASE                                   
echo
echo Made by Tolerate, Modded by Makeshift
echo.
set /p user=Username: 
echo.
set /p pass=Password: 
echo.

if "%user%"=="Administrator" if "%pass%"=="root" goto success
if "%user%"=="User" if "%pass%"=="user" goto successtwo
if "%user%"=="Moon" if "%pass%"=="moon" goto successmoon

echo [!] Invalid Login. Please try again... [!]
pause
goto menu

:success
title Simple CMD Launcher - Currently Logged in as [%user%]
cls
echo  ██████╗███╗   ███╗██████╗                                         
echo ██╔════╝████╗ ████║██╔══██╗                                        
echo ██║     ██╔████╔██║██║  ██║                                        
echo ██║     ██║╚██╔╝██║██║  ██║                                        
echo ╚██████╗██║ ╚═╝ ██║██████╔╝                                        
echo  ╚═════╝╚═╝     ╚═╝╚═════╝                                                                                                        
echo ██╗      █████╗ ██╗   ██╗███╗   ██╗ ██████╗██╗  ██╗███████╗██████╗ 
echo ██║     ██╔══██╗██║   ██║████╗  ██║██╔════╝██║  ██║██╔════╝██╔══██╗
echo ██║     ███████║██║   ██║██╔██╗ ██║██║     ███████║█████╗  ██████╔╝
echo ██║     ██╔══██║██║   ██║██║╚██╗██║██║     ██╔══██║██╔══╝  ██╔══██╗
echo ███████╗██║  ██║╚██████╔╝██║ ╚████║╚██████╗██║  ██║███████╗██║  ██║
echo ╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝                                                                  
echo.
echo ╔═══════════════════════════════════════════════╗
echo ║                                               ║
echo ║        1 - Netplwiz (Admin)                   ║
echo ║        2 - Cmd (Admin)                        ║
echo ║        3 - Task Manager  (Admin)              ║
echo ║        4 - Log Out                            ║ 
echo ╚═══════════════════════════════════════════════╝
echo.

set /p a=Select an option [%user%]: 
if "%a%"=="1" goto one
if "%a%"=="2" goto two
if "%a%"=="3" goto three
if "%a%"=="4" goto four

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

:four
echo Logging off...
goto menu

:powershellmode
echo Powershell mode activated, Have Fun!

:successtwo
title Simple CMD Launcher - Currently Logged in as [%user%]
cls
 echo ██████╗███╗   ███╗██████╗                                         
echo ██╔════╝████╗ ████║██╔══██╗                                        
echo ██║     ██╔████╔██║██║  ██║                                        
echo ██║     ██║╚██╔╝██║██║  ██║                                        
echo ╚██████╗██║ ╚═╝ ██║██████╔╝                                        
echo  ╚═════╝╚═╝     ╚═╝╚═════╝                                                                                                        
echo ██╗      █████╗ ██╗   ██╗███╗   ██╗ ██████╗██╗  ██╗███████╗██████╗ 
echo ██║     ██╔══██╗██║   ██║████╗  ██║██╔════╝██║  ██║██╔════╝██╔══██╗
echo ██║     ███████║██║   ██║██╔██╗ ██║██║     ███████║█████╗  ██████╔╝
echo ██║     ██╔══██║██║   ██║██║╚██╗██║██║     ██╔══██║██╔══╝  ██╔══██╗
echo ███████╗██║  ██║╚██████╔╝██║ ╚████║╚██████╗██║  ██║███████╗██║  ██║
echo ╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝                                                                  
echo.
echo ╔═══════════════════════════════════════════════╗
echo ║                                               ║
echo ║        1 - Netplwiz                           ║
echo ║        2 - Cmd                                ║
echo ║        3 - Task Manager                       ║
echo ║        4 - Log Out                            ║  
echo ╚═══════════════════════════════════════════════╝
echo.

set /p a=Select an option [%user%]: 
if "%a%"=="1" goto onenoadmin
if "%a%"=="2" goto twonoadmin
if "%a%"=="3" goto threenoadmin
if "%a%"=="4" goto fournoadmin

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

:fournoadmin
echo Logging off...
goto menu

:powershellmodenoadmin
echo Powershell mode activated, Have Fun!

:successmoon
title Parabox - Currently Logged in as [%user%]
cls
echo               
echo ██████╗  █████╗ ██████╗  █████╗ ██████╗  ██████╗ ██╗  ██╗
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔═══██╗╚██╗██╔╝
echo ██████╔╝███████║██████╔╝███████║██████╔╝██║   ██║ ╚███╔╝ 
echo ██╔═══╝ ██╔══██║██╔══██╗██╔══██║██╔══██╗██║   ██║ ██╔██╗ 
echo ██║     ██║  ██║██║  ██║██║  ██║██████╔╝╚██████╔╝██╔╝ ██╗
echo ╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝  ╚═════╝ ╚═╝  ╚═╝
                                                                      
echo.
echo ╔═══════════════════════════════════════════════╗
echo ║                                               ║
echo ║        1 - Netplwiz (Admin)                   ║
echo ║        2 - whoami                             ║
echo ║        3 -  Control Panel (Admin)             ║
echo ║        4 - Log Out                            ║
echo ║        5 - voidboot (#$%^*)                   ║  
echo ╚═══════════════════════════════════════════════╝
echo.

set /p a=Select an option [%user%]: 
if "%a%"=="1" goto onemoon
if "%a%"=="2" goto twomoon
if "%a%"=="3" goto threemoon
if "%a%"=="4" goto fourmoon
if "%a%"=="5" goto successvoidboot

echo [!] Invalid Choice. Please try again... [!]
pause
goto successthree

:onemoon
set __compat_layer=runasinvoker
start C:\Windows\System32\Netplwiz.exe
goto successmoon

:twomoon
whoami
goto successmoon

:threemoon
set __compat_layer=runasinvoker
start C:\Windows\System32\control.exe
goto successmoon

:fourmoon
echo Logging off...
goto menu

:powershellmode
echo Powershell mode activated, Have Fun!




:successvoidboot
echo SOON.
echo WHY ARE YOU HERE ?
echo LOOKING FOR SECRETS PERHAPS ?
echo NO SECRETS HERE.
echo ONLY HELL, NOW GET OUT.
pause
goto successnovoidboot


:successnovoidboot
title Parabox - Currently Logged in as [%user%]
cls
echo               
echo ██████╗  █████╗ ██████╗  █████╗ ██████╗  ██████╗ ██╗  ██╗
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔═══██╗╚██╗██╔╝
echo ██████╔╝███████║██████╔╝███████║██████╔╝██║   ██║ ╚███╔╝ 
echo ██╔═══╝ ██╔══██║██╔══██╗██╔══██║██╔══██╗██║   ██║ ██╔██╗ 
echo ██║     ██║  ██║██║  ██║██║  ██║██████╔╝╚██████╔╝██╔╝ ██╗
echo ╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝  ╚═════╝ ╚═╝  ╚═╝
                                                                      
echo.
echo ╔═══════════════════════════════════════════════╗
echo ║                                               ║
echo ║        1 - Netplwiz (Admin)                   ║
echo ║        2 - whoami                             ║
echo ║        3 -  Control Panel (Admin)             ║
echo ║        4 - Log Out                            ║                             
echo ╚═══════════════════════════════════════════════╝
echo.

set /p a=Select an option [%user%]: 
if "%a%"=="1" goto onenovoid
if "%a%"=="2" goto twonovoid
if "%a%"=="3" goto threenovoid
if "%a%"=="4" goto fournovoid
if "%a%"=="5" goto successvoidboot

echo [!] Invalid Choice. Please try again... [!]
pause
goto successnovoidboot

:onenovoid
set __compat_layer=runasinvoker
start C:\Windows\System32\Netplwiz.exe
goto successnovoidboot

:twonovoid
whoami
goto successnovoidboot

:threenovoid
set __compat_layer=runasinvoker
start C:\Windows\System32\control.exe
goto successnovoidboot

:fournovoid
echo Logging off...
goto menu 