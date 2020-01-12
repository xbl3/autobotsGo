for /f "tokens=1-9* delims=:./" %i in (D:\wget-mirror-input-list.txt) do @echo %i %j %k %l %m %n %o %p 


:hereGoingLittleFurther
:probably need delayed expansion

goto:eof

for /f "tokens=1-9* delims=:./" %i in (%ripList%) do @ ( for %a in (%) do @ ( for %b in (i j k l m n o p q r s t u v ) do @ (echo %i %j %k %b ) ) )
https download freebsd i
https download freebsd j
https download freebsd k
https download freebsd l
https download freebsd m
https download freebsd n
https download freebsd o
https download freebsd p
https download freebsd q
https download freebsd r
https download freebsd s
https download freebsd t
https download freebsd u
https download freebsd v


goto:eof

using this ""tokens=1-9* delims=:./?/""

should hopefully be able to parse uri too

heres with = too
delims=:./?/=/"

bullshit ref url from google
https://www.google.com/search?q=Handling+of+non-IP+packets+which+are+not+passed+to+pfil+(see+if_bridge(4))&newwindow=1&sxsrf=ACYBGNSAcfrngYB0fR98_dcBvpc_GHvAHA:1578836878436&tbas=0&source=lnt&sa=X&ved=2ahUKEwismrDamf7mAhUC01kKHbhvAkIQpwV6BAgOEBg&biw=2048&bih=960

adding & and + the () was from a direct copy is all

works


for /f "tokens=1-9* delims=:./?/=/+/&/" %i in (%ripList%) do @ ( for %a in (%) do @ ( for %b in (i j k l m n o p q r s t u v ) do @ (echo %i %j %k %b ) ) )


https download freebsd i
https download freebsd j
https download freebsd k
https download freebsd l
https download freebsd m
https download freebsd n
https download freebsd o
https download freebsd p
https download freebsd q
https download freebsd r
https download freebsd s
https download freebsd t
https download freebsd u
https download freebsd v


