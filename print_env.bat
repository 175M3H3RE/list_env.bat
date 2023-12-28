@echo off

rem **************************************************.
rem |  Program Logic: Echo %Path% by delimiter ";"    |
rem |                 separated by new line           |
rem |                 Increase a variable _lmYExo for |
rem |_________________every_line_emitted_else_leave___|



set /a _lMKcmi=1
set /a _lmYExo=0
set /a _rLdlGF=0
set /a _jzIOXtES=1
:loop
for /f "tokens=%_jzIOXtES% delims=;" %%i in ("%path%") do CALL :add_lmYExo "%%i"&(echo %%i)

set /a _jzIOXtES+=1

REM *** if _lmYExo is not updating any more exit
if %_rLdlGF%==%_lmYExo% goto :eof

REM *** make _rLdlGF to be _lmYExo
set /a _rLdlGF=_lmYExo

goto loop
:add_lmYExo
set /a _lmYExo+=1
