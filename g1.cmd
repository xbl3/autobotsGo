@echo off 

set inputsUsed=URL LIST

echo	You can always set the enviroment variable before you call this batch file
echo		it'll check for for following inputs
for %%i in (%%i) do (
	for /L %%g in (1,1,3) do (echo:)
		for %%I in ("%inputsUsed%") do ( echo			"%%~I" 	)
		) 



if "%~2" == "" ( 
echo:
echo	leave the following iput empty to skip to the input for a keyword list instead of a URL
	if not defined URL set /p URL= "	Please enter a URL to gggGetImagesFrom 
for  %%a in (%*) do ( 
 if not "%%~i" == "" ( 


for /R %%i in (%windir%\chromed*) do ( if exist %%i set "chromeDriver=--chromeDriver %%~di\%%~pi\%%~nxi" )
googleimagesdownload -cd "C:\\Windows\\chromedriver.exe" -o "D:\\googleimagesdownload" -u "%1"
googleimagesdownload --chromedriver "C:\\Windows\\chromedriver.exe" --output_directory "D:\\googleimagesdownload" --URL "%1"