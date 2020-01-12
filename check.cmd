@echo off

goto:forLoop
FORFILES /P %WINDIR% /M chromed* /C "cmd /c echo @path" 


:forLoop
for %%i in (%%i) do ( 
	for /f "delims=" %%a in ('FORFILES /P %WINDIR% /M chromed* /C "cmd /c echo @path"') do ( 
				for %%b in (%%a) do ( echo %%b )
			if exist %%a ( echo %%a )
	)
) 
goto:eof

goto:eof

goto:eof

setlocal
path=%windir%

for /f "usebackq" %%i in (chromedriver.exe) do ( echo %%~:i )

endlocal

goto:eof

for /R %windir% %%i in (chromedriver.exe) do ( 
	if exist %%i ( echo %%i )		

)
goto:eof
set "chromeDriver=--chromeDriver %%~di\%%~pi\%%~nxi" 





