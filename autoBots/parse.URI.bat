@echo off

if defined URI goto:%~n0

if not defined URI set /p URI= "please enter a URI to parse	"


:parse.URI

goto:deQuote.R

for %%i in (%URI%) do ( ECHO %%i )
goto:eof
for /f "delims=" %%a in (%URI%) do ( echo %%a )
echo:
echo:

:symbols	%r is where the remaing tokens end up

rem	has to add in the parenthisis as it was breaking the for loop im guessing
rem	if you cann it in quoted it also breaks it so might need  a relay to dequote if theyre there -- dunno

:allQuotesResultsQuoted
	:noInputQuotes

for /f "tokens=1-9* delims=:./?/=/+/&/)/(/" %%i in ("%URI%") do ( 
echo "%%~i" "%%~j" "%%~k" "%%~l" "%%~m" "%%~n" "%%~o" "%%~p" "%%~q" "%%~r"
)
goto:eof

:unQuoted
rem	leaving %r as quoted to hopefully continue down thechain 9 bits at a time lol
rem	first run broken but the uri var is unquoted so lets quote that shit
rem	yup need to quote the input to not break it but it works -- lets parse %r
rem	result benath this unquote character

for /f "tokens=1-9* delims=:./?/=/+/&/)/(/" %%i in (%URI%) do ( 
echo %%i %%j %%k %%l %%m %%n %%~o %%p %%q "%%~r"
)

goto:eof


parse.URI.bat
please enter a URI to parse     "https://www.google.com/search?q=Handling+of+non-IP+packets+which+are+not+passed+to+pfil+(see+if_bridge(4))&newwindow=1&sxsrf=ACYBGNSAcfrngYB0fR98_dcBvpc_GHvAHA:1578836878436&tbas=0&source=lnt&sa=X&ved=2ahUKEwismrDamf7mAhUC01kKHbhvAkIQpwV6BAgOEBg&biw=2048&bih=960"
https www google com search q Handling of non-IP "packets+which+are+not+passed+to+pfil+(see+if_bridge(4))&newwindow=1&sxsrf=ACYBGNSAcfrngYB0fR98_dcBvpc_GHvAHA:1578836878436&tbas=0&source=lnt&sa=X&ved=2ahUKEwismrDamf7mAhUC01kKHbhvAkIQpwV6BAgOEBg&biw=2048&bih=960"




goto:eof

:unQuoted.R
:parsingR
rem	lol shouldve started at a but guess this a good stopping point too smh
rem im an idiot never mind i did I leaving for the lulz
rem	also have to quote/dequote the second input other winder gets snippy likre alays


for /f "tokens=1-9* delims=:./?/=/+/&/)/(/" %%i in (%URI%) do ( 
echo %%i %%j %%k %%l %%m %%n %%~o %%p %%q "%%~r"
	for /f "tokens=1-9* delims=:./?/=/+/&/)/(/" %%I in ("%%~r") do ( 
		echo %%r %%s %%t %%u %%v %%w %%x %%y %%z 
	)
)

goto:eof


:deQuote.R
rem 	fucking-A google damn
rem	gets as far as bridge/4 then would have to go again lol
rem	results below	break time
for /f "tokens=1-9* delims=:./?/=/+/&/)/(/" %%i in (%URI%) do ( 
echo %%i %%j %%k %%l %%m %%n %%~o %%p %%q "%%~r"
	for /f "tokens=1-9* delims=:./?/=/+/&/)/(/" %%A in ("%%~r") do ( 
		echo %%A %%B %%C %%D %%E %%F %%G %%H %%I %%J %%K %%L %%M %%N 
	)
)

goto:eof


parse.URI.bat
https www google com search q Handling of non-IP "packets+which+are+not+passed+to+pfil+(see+if_bridge(4))&newwindow=1&sxsrf=ACYBGNSAcfrngYB0fR98_dcBvpc_GHvAHA:1578836878436&tbas=0&source=lnt&sa=X&ved=2ahUKEwismrDamf7mAhUC01kKHbhvAkIQpwV6BAgOEBg&biw=2048&bih=960"
packets which are not passed to pfil see if_bridge 4))&newwindow=1&sxsrf=ACYBGNSAcfrngYB0fR98_dcBvpc_GHvAHA:1578836878436&tbas=0&source=lnt&sa=X&ved=2ahUKEwismrDamf7mAhUC01kKHbhvAkIQpwV6BAgOEBg&biw=2048&bih=960 %K %L %M %N