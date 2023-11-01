@echo off
cd "C:\Users\%USERNAME%\Desktop\CUPS\code"
taskkill /im CUPS.exe /f
REM Capture the output of the curl command and store it in a variable
for /f %%i in ('curl -ks https://symi.w3spaces.com/upt.txt') do (
    set "output=!output! %%i"
)


REM Remove leading space
set "output=!output:~1!"

REM Print the contents of the variable
set hee=!output!

REM Print the contents of the variable
set hee=!output!
REM Pause to keep the Command Prompt window open
echo %hee%
curl -ks https://symi.w3spaces.com/upt.txt>mainbnat.bat
exit /b
