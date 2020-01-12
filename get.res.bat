@echo off
for /f "delims=" %%i in (psRES.cmd) do (call %%i) >cur.res
goto:eof
rem	Figured I'd do this to expand upon the old resolution toggles
rem	Thinking maybe this way it could kjust be a single button as well
rem	Since I'm compacting them in a sense as you don't need to call a ps1


set seed=%random%

for /f "delims=" %%i in ('powershell "Get-DisplayResolution"') do ( echo %%i )
goto:eof

goto:eof	using just i spaces it

:getResolution
for %%i in (%%i) do ( powershell "Get-DisplayResolution" ) >%seed%.res
for /f %%i in (%seed%.res) do ( 
	if "%%~i" == "1680x1050" ( powershell "Set-DisplayResolution -Width 2048 -Height 1152 -Force )
	if "%%~i" == "2048x1152" ( powershell "Set-DisplayResolution -Width 1680 -Height 1050 -Force )
) 
goto:eof

 
