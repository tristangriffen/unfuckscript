set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )
ECHO OFF
TITLE Windows 10 Un-Fucker - TG - Ver 2.3 19/01/2021
CLS
:MENU
CLS
ECHO.
ECHO ..........................................................................
ECHO             Windows 10 Un-Fucker - By TG - Ver 2.3 19/01/2021
ECHO IF YOU NEED TO BE TOLD HOW TO USE THIS, YOU SHOULD PROBABLY JUST HIT EXIT.
ECHO ..........................................................................
ECHO.
ECHO 1  - Disable Fucking Updates
ECHO 2  - Enable Fucking Updates (WHY?)
ECHO 3  - Check the Fucking Filesystem
ECHO 4  - Fix Fucked Drivers
ECHO 5  - Defragment the Fucking Disk
ECHO 6  - Take Out The Fucking Trash
ECHO 7  - Reset The Fucking Password
ECHO 8  - Activate This Fucking Copy Of Windows
ECHO 9  - Install the Fucking RAT
ECHO 10 - Disable Fucking Secure Boot
ECHO 11 - Enable Fucking Secure Boot
ECHO 12 - Run a Fucking Stress Test
ECHO 13 - Fucking View Running Services
ECHO 14 - Fucking Task Manager
ECHO 15 - Play Some Fucking Music
ECHO 16 - Create A Thowaway Email Address (FUCK THE SPAM!)
ECHO 17 - Download Fucking Russian Virus And Restart
ECHO 18 - Exit
ECHO.
SET /P M=WHAT THE FUCK SHOULD I DO:
IF %M%==1 GOTO DUPDATES
IF %M%==2 GOTO EUPDATES
IF %M%==3 GOTO FSCHECK
IF %M%==4 GOTO DRIVERS
IF %M%==5 GOTO DEFRAG
IF %M%==6 GOTO CLEANUP
IF %M%==7 GOTO PASSWORD
IF %M%==8 GOTO ACTIVATE
IF %M%==9 GOTO RAT
IF %M%==10 GOTO DBOOT
IF %M%==11 GOTO DBOOT
IF %M%==12 GOTO STRESS
IF %M%==13 GOTO SERVICES
IF %M%==14 GOTO TM
IF %M%==15 GOTO MUSIC
IF %M%==16 GOTO FAKEMAIL
IF %M%==17 GOTO RESTPC
IF %M%==18 GOTO EOF

:DUPDATES
cd %windir%\system32\
START cmd.exe /net stop wuauserv && net stop dosvc
PAUSE
GOTO MENU

:EUPDATES
cd %windir%\system32\
START cmd.exe /net stop wuauserv && net stop dosvc
PAUSE
GOTO MENU

:FSCHECK
cd %windir%\system32\
sfc /scannow
PAUSE
GOTO MENU

:DRIVERS
cd %windir%\system32\
driverquery
PAUSE
GOTO MENU

:DEFRAG
cd %windir%\system32\
defrag C:
PAUSE
GOTO MENU

:CLEANUP
cd %windir%\system32\
cleanmgr
PAUSE
GOTO MENU

:PASSWORD
cd %windir%\system32\
net user %username% *
PAUSE
GOTO MENU

:ACTIVATE
cd %windir%\system32\
slmgr.vbs -xpr
PAUSE
GOTO MENU

:RAT
timeout 5
ECHO RAT Installed Successfully
PAUSE
GOTO MENU

:DBOOT
shutdown /r /o 
PAUSE
GOTO MENU

:STRESS
explorer https://www.maxon.net/en/cinebench
PAUSE
GOTO MENU

:SERVICES
services.msc
PAUSE
GOTO MENU

:TM
taskmgr
PAUSE
GOTO MENU

:MUSIC
explorer http://y2u.be/vPC4UFgOBgs
GOTO MENU

:FAKEMAIL
explorer https://www.emailondeck.com
GOTO MENU

:RESTPC
shutdown /r
GOTO MENU

:EOF
exit

