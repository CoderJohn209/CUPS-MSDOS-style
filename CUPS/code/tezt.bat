@echo off
mode 100
setlocal enabledelayedexpansion

set /p a=Enter a word or phrase: 

set len=0
for /l %%i in (0,1,999) do (
    set "char=!a:~%%i,1!"
    if not "!char!" == "" (
        set /a len+=1
    ) else (
        goto :done2
    )
)

:done2
echo %a% contains %len% letters.

set "sts=%a%  *"
echo %sts%

pause