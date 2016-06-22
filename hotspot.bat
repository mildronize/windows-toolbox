@ECHO OFF
echo Hotspot
echo .

set wirelessName=Hotspot

IF "%1"=="start" goto START
IF "%1"=="stop" goto STOP
IF "%1"=="restart" goto RESTART
IF "%1"=="stat" goto STAT

set /p name=What is Adhoc name ? (Press S to stop):


IF "%name%"=="S" goto STOP
IF "%name%"=="" goto START

:SET
echo Start adhoc!
set /p pass=Password ? :
netsh wlan set hostednetwork mode=allow ssid="%name%" key=%pass%
netsh wlan start hostednetwork
netsh interface ip set address name="%wirelessName%" source=dhcp
goto EXIT

:START
echo Starting hotspot!
netsh wlan start hostednetwork
goto EXIT


:STOP
echo Stopping hotspot!
netsh wlan stop hostednetwork
goto EXIT

:RESTART
echo Restarting hotspot!
netsh wlan stop hostednetwork
netsh wlan start hostednetwork
goto EXIT

:STAT
netsh wlan show hostednetwork
goto EXIT

:EXIT
pause