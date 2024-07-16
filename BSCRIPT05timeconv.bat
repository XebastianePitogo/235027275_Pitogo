@echo off
setlocal

REM Get user input for the 24-hour time
set /p input_time=Enter the time (HH:MM): 

REM Extract hours and minutes
for /f "tokens=1,2 delims=:" %%a in ("%input_time%") do (
    set "hours=%%a"
    set "minutes=%%b"
)

REM Convert to 12-hour format
if %hours% lss 12 (
    set "ampm=AM"
    if %hours% equ 0 set "hours=12"
) else (
    set "ampm=PM"
    if %hours% gtr 12 (
        set /a "hours-=12"
    )
)

REM Display the result
echo Converted time: %hours%:%minutes% %ampm%

endlocal
