@echo off
setlocal enabledelayedexpansion




set _direct=0AHqRdTMD3Vu4Uk9PVA

set DRIVE_NAME=_direct

set API_KEY=AIzaSyAHg8ncbOrNz4fiGKz1ALdfMq7Qu1Mto_I

set DRIVE_ID=!DRIVE_NAME!



for %%i in (API_KEY DRIVE_ID) do (
 
echo:%%i:!%%i!

)

goto:eof
:example
curl \
  'https://www.googleapis.com/drive/v3/drives/[DRIVEID]?key=[YOUR_API_KEY]' \
  --header 'Authorization: Bearer [YOUR_ACCESS_TOKEN]' \
  --header 'Accept: application/json' \
  --compressed