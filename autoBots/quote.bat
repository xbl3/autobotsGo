@echo off

for %%i in (*) do ( 
if not "%%~i" == "-u" echo "%%i" 
) 
