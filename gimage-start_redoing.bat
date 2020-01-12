@echo off 
::gitHUB	https://github.com/hardikvasa/google-images-download
::docsETC	https://google-images-download.readthedocs.io/en/latest/installation.html#install-using-pip
setlocal enabledelayedexpansion

set "downloadFolder=%userprofile%\Pictures\GoogleImageDownloader"

for %%i in (%*) do ( 
	for /f "usebackq tokens=1-9* delims=" %%I in (`echo %%i`) do (set array=%%Iƒ!array!)

if "%~2" == "" ( set downloadFolder=%2 ) 
)
for /f "tokens=1-9* delims=ƒ" %%i in ("!array!") do ( echo %%~i %%~j)
endlocal
goto:eof
	

googleimagesdownload -k 





goto:eof


:install
pip install google_images_download
goto:eof