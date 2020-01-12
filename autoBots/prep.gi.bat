@echo off
rem	prep google image downloader


for %%i in (

googleimagedownloader
requests-futures
pandas
bs4
requests

) do (
pip install %%i
)
goto:eof




goto:eof
:cli
pip install requests-futures
pip install pandas
pip install bs4
pip install requests
pip install googleimagedownloader
