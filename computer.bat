@echo off
set paint=0
:loop

for /f "tokens=1,2 delims=:" %%a in ('batbox /m') do (
if %paint%==0 (
set paint=1
) else (
set paint=0
)
)

for /f "tokens=1,2 delims=:" %%a in ('batbox /y') do (
if %paint%==1 (
batbox /g %%a %%b /c 0xcc /d "#"
)
)
goto loop