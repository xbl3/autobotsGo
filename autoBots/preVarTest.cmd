@echo off 

if defined letmesee goto:callingVARSafterWorks
goto:eof

:setingVARSbeforeWorks
::see below as vars are bidirectional

set "targetDir=D:\wget-webpage-mirrors"
set "logFile=D:\wget-mirroring.log"
set "ripList=D:\wget-mirror-input-list.txt"

if defined preRip echo %preRip%


goto:eof

:callingVARSafterWorks
for %%i in (symb.txt) do type %%i

for /l %%i in (1,1,5) do ( echo: )
timeout 13

for /f "delims=" %%i in (symb.txt) do ( echo %%i )



:results

Both work -  
using type (no /f iteration) all spaces etc stay intact
using echo (/f iteration no delims) it flattens it out basically but everything else remained 
	{must be how they're always parsing and removing whitespaces etc}



resulting output follow




goto:eof

C:\Users\Administrator>preVarTest.cmd
$       n preVarTest.cmd

$       set preRip=ripMe

$       preVarTest.cmd
command above "if defined ....."
ripMe

$       echo %ripList%
D:\wget-mirror-input-list.txt





Waiting for  0 seconds, press a key to continue ...
$       n preVarTest.cmd
$       set preRip=ripMe
$       preVarTest.cmd
command above "if defined ....."
ripMe
$       echo %ripList%
D:\wget-mirror-input-list.txt



goto:eof


figured I throw in the var i set for letmesee (which can be anything at all really as it's defined)

echo %letmesee%
lmc








goto:eof
for "%%I" in ( "
$	n preVarTest.cmd

$	set preRip=ripMe

$	preVarTest.cmd
command above "if defined ....."
ripMe

$	echo %ripList%
D:\wget-mirror-input-list.txt

"

) do (
	for %%a in ("%%I") do ( 
		echo "%%~a"
	) 
)
goto:eof