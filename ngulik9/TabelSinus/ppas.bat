@echo off
SET THEFILE=c:\users\san\docume~1\kusmang\pascal\ngulik9\tabels~1\tabels~1.exe
echo Linking %THEFILE%
c:\dev-pas\bin\ldw.exe  C:\Users\San\DOCUME~1\KUSMANG\pascal\ngulik9\TABELS~1\rsrc.o -s   -b base.$$$ -o c:\users\san\docume~1\kusmang\pascal\ngulik9\tabels~1\tabels~1.exe link.res
if errorlevel 1 goto linkend
goto end
:asmend
echo An error occured while assembling %THEFILE%
goto end
:linkend
echo An error occured while linking %THEFILE%
:end
