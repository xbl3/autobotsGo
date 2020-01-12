@echo off

for %%i in (%1) do ( 
if "%%i" == "1" ( powershell "Set-DisplayResolution -Width 1680 -Height 1050 -Force" )
if "%%i" == "2" ( powershell "Set-DisplayResolution -Width 2048 -Height 1152 -Force" )
)
goto:eof