@echo off 

rem 	Get external WAN IP Address, output to file in raw form, return and process said output for external address

set ipWAN=
set ioWAN=%windir%\wan.io

::	remove previous version		if exist tokenize del tokenize
::	create tokenize if missing	

	if NOT exist %ioWAN% (
		call:getRawWAN
			) else ( 
	echo: Current WAN IP is: %ipWAN%
)

goto:eof



:rawWANparseI
echo:rawWANparseI
for /f "useback tokens=1,2,3* delims=:" %%i in (%1) do ( 
	for %%a in ("%%~j") do ( 
		for /f "eol=< delims=</" %%b in (%%a) do ( echo %%b )
echo:endWAN-I
		)
	) 
goto:eof


:rawWANparseA
echo:rawWANparseA
for /f "useback tokens=1,2,3* delims=:" %%i in (%1) do ( 
	for %%a in ("%%~j") do ( 
		for /f "eol=< delims=</" %%b in (%%a) do ( echo %%b )
echo:endWAN-A
		)
	) 
goto:eof



:rawWANparseFI
echo:rawWANparseFI
for /f "useback tokens=1,2,3* delims=:" %%i in (%1) do ( 
	for %%a in ("%%~j") do ( 
		for /f "eol=< delims=</" %%b in (%%a) do ( echo %%b )
echo:endWAN-FI
		)
	) 
goto:eof


:rawWANparseFZ
echo:rawWANparseFZ
for /f "useback tokens=1,2,3* delims=:" %%i in (%1) do ( 
	for %%a in ("%%~j") do ( 
		for /f "eol=< delims=</" %%b in (%%a) do ( echo %%b )
echo:endWAN-FZ
		)
	) 
goto:eof


:wanParseFile
for /f "useback tokens=1,2,3* delims=:" %%i in (%windir%\wan.raw) do ( 
	echo %%j 
		for %%a in ("%%~j") do ( 
			for /f "eol=< delims=</" %%b in (%%a) do ( echo %%b )
		)
	) 
goto:eof


:forF
goto:eof
for /f "useback tokens=* delims=<" %%z in (%%j) do ( echo "%%z")
goto:eof

:shutTheFuckUpAlready
set fuckinAnnoying="%~1"
for %%i in (fuckinAnnoying) do ( echo %%i )
goto:eof
:getRawWAN

for /f "useback tokens=1,2,3* delims=:" %%i in (`curl "https://www.netgate.com/ip"`) do ( 
		
		for /f "eol=< delims=</" %%f in ("%%j") do ( 
			for %%a in ( %%~f ) do echo:%%a
			)
		) 

goto:eof
:	if not exist %windir%\wan.raw ( echo:%%i>%windir%\wan.raw ) 
set "shutTheFuckUpAlready=%%i"
echo "%shutTheFuckUpAlready%"
for %%Z in (%%F) do ( echo %shutTheFuckUpAlready% )
goto:eof
:call :shutTheFuckUpAlready "%%i"
pause
echo %%i -i-
for %%z in (%%i) do ( 
echo %%z
echo %%~xz
pause
		for /f "useback skip=5 tokens=1,2,3* delims=:" %%a in ("%%~z") do ( echo "%%~a" ) )
	)

goto:eof
for /f "eol=< delims=</" %%A ("%%b") do ( echo -A- %%A ) ) 

) 


goto:eof
:getRawWANv1
for /f "useback tokens=* delims=:" %%i in (`curl "https://www.netgate.com/ip"`) do ( 
	if not exist %windir%\wan.raw ( echo:%%i>%windir%\wan.raw )
		for %%a in (%%i) do ( 
			echo:"%%i"
			echo -a- %%a
			call:rawWANparseI "%%i"
			call:rawWANparseA "%%a"
				for /f "tokens=* delims=" %%z in ("%%i") do (
					call:rawWANparseFI "%%~i"
					call:rawWANparseFZ "%%~z"
						for /f "useback tokens=1,2,3* delims=:" %%y in ("%%~i") do ( 
									for %%a in ("%%~j") do ( 
								for /f "eol=< delims=</" %%b in (%%a) do ( echo %%b )

														)
												) 



										)
	)
)


goto:eof

:orginalForReference
for /f "useback tokens=* delims=:" %%i in (`curl "https://www.netgate.com/ip"`) do ( 
echo %%i

 ) >> %userprofile%\tokenize
goto:eof