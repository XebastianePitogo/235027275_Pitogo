@echo off
setlocal enabledelayedexpansion

:: Prompt the user for a number
set /p number=Enter a number: 

:: Display the reverse multiplication table
echo Reverse Multiplication Table for %number%
for /l %%i in (10,-1,1) do (
    set /a result=%number% * %%i
    echo %number% x %%i = !result!
)

pause
