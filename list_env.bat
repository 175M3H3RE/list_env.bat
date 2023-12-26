@echo off

rem *************************************************
rem |  Program Logic: Echo %Path% by delimiter ";"  |
rem |                 separated by new line         |
rem |                 Increase a variable var for   |
rem |_________________every_line_emitted_else_leave |



set /a str=1
set /a var=0
set /a oldvar=0

:loop
for /f "tokens=%token_no% delims=;" %%i in ("%path%") do CALL :check "%%i"&(echo %%i)

set /a token_no+=1

REM *** if var is not updating any more exit
if %oldvar%==%var% goto :eof

REM *** make oldvar to be var
set /a oldvar=var

goto loop
:addvar
set /a var+=1