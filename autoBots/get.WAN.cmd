@echo off 

rem	I ended up adding a lot of "fluff" kinda so it can be trimmed
rem	but basic core functionality is that it'll curl for the external WAN ip silently
rem	this then gets parsed to strip the HTML to setup comparisons
rem	It'll then log the WAN IP and date/time it was determined/changed
rem	Tell you the same IP is still present
rem	Beyond this it'll also ping Cloudflare, Google, and Quad9
rem	Get the current local information of DNS Gateway and IP
rem	And lastly checks the routing and PBR by doing a tracert on all 3 again

set "wan=%windir%\wan.ip"
set "log=%windir%\wanIP.log"

for /f "useback tokens=1,2,3* delims=:" %%i in (`curl --silent "https://www.netgate.com/ip"`) do ( 
		
		for /f "eol=< delims=</" %%f in ("%%j") do ( 

						for %%a in ( %%~f ) do ( 
							echo:
							if exist %wan% ( 
								for /f "eol=;" %%U in (%wan%) do ( 
									if NOT "%%~U" == "%%~a" ( 
											echo:%%U
											 echo:; %date%-%time% 
												 )>>%log%	
									if "%%~U" == "%%~a" ( 
										echo:Same IP as last check
										echo 	Checking TTL
											timeout 3
											cls
											color 2
											for /L %%i in (1,1,3) do ( echo: )
											ping 1.1.1.1 || 1.0.0.1
											ping 8.8.8.8 || 8.8.4.4
											ping 9.9.9.9
											echo:
					for /f "useback delims=" %%G in (`ipconfig`) do  ( for %%Y in (ipv4 dns gateway) do ( echo %%G | find /i "%%Y" ) )
							color 9
							now checking routes and PBR
						tracert 1.1.1.1 || 1.0.0.1
						tracert 8.8.8.8 || 8.8.4.4
						tracert 9.9.9.9
												)
										)
							
								)
						
							echo:	Current WAN IP:		%%a
				)
			)
		) 

goto:eof
	 

:logging
 type %wan% &echo:; %date%-%time% )>>%log%
