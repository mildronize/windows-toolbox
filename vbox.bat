:: Name:     vbox.bat
:: Purpose:  To manage virtual machines via cmd
:: Author:   Thada Wangthammang <mildronize@gmail.com>
:: Revision: 2016/06/22 Initial version

:: Ref: http://steve-jansen.github.io/guides/windows-batch-scripting/part-10-advanced-tricks.html
::      http://schier.co/blog/2013/03/13/start-virtualbox-vm-in-headless-mode.html


@ECHO OFF
SET VirtualBoxPath=C:\Program Files\Oracle\VirtualBox
SET DefaultVmName=md9-dev

IF "%1"=="help" GOTO HELP
IF "%1"=="start" GOTO START
IF "%1"=="stop" GOTO STOP
IF "%1"=="ls" GOTO LIST
IF "%1"=="list" GOTO LIST

:HELP
ECHO vbox start [VM Name]
ECHO vbox stop  [VM Name]
ECHO To list VM name
ECHO vbox ls    [VM Name]
ECHO vbox list  [VM Name]
GOTO EXIT

:START
IF "%2"=="" (
	SET VmName=%DefaultVmName%
) ELSE (
	SET VmName=%2
)
ECHO Starting... %VmName% 
"%VirtualBoxPath%\VBoxManage.exe" startvm %VmName% --type headless
GOTO EXIT

:STOP
IF "%2"=="" (
	SET VmName=%DefaultVmName%
) ELSE (
	SET VmName=%2
)
ECHO Stopping... %VmName% 
"%VirtualBoxPath%\VBoxManage.exe" controlvm %VmName% poweroff
GOTO EXIT

:LIST
"%VirtualBoxPath%\VBoxManage.exe" list vms

:EXIT
ECHO ON
@EXIT /B 0