@echo off
title Build Agent Manager
echo Build Agent Manager
echo =============================================
echo.

net session > nul 2>&1
IF NOT %errorLevel% == 0 (
    echo ---- Hint: `Run as administrator` ----
)

choice /C EDQ /N /M "[E]nable, [D]isable, [Q]uit:"
IF ERRORLEVEL 3 exit
IF ERRORLEVEL 2 GOTO disable
IF ERRORLEVEL 1 GOTO enable

:enable
echo.
net start TeamCity > nul 2> nul
net start TCBuildAgent > nul 2> nul
echo Done!
pause > nul
exit

:disable
echo.
net stop TeamCity > nul 2> nul
net stop TCBuildAgent > nul 2> nul
echo Done!
pause > nul
exit
