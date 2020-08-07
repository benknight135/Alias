@echo off

SET initcwd=%cd%
SET scriptpath=%~dp0
cd %scriptpath:~0,-1%

set "aliaspath=%scriptpath:~0,-1%\Alias.bat"
set "regpath=HKEY_LOCAL_MACHINE\Software\Microsoft\Command Processor"
set "regval=Autorun"

echo Adding alias path to registry (make sure this is run as admin)...

echo Alias path: %aliaspath%
echo Reg location: %regpath%
echo Reg value: %regval%

reg add "%regpath%" /v %regval% /t REG_SZ /d "%aliaspath%" /f

echo Reloading command prompt...
cmd