@echo off
SET THEFILE=c:\users\san\docume~1\kusmang\pascal\pe294d~1\record\record.exe
echo Linking %THEFILE%
c:\dev-pas\bin\ldw.exe  C:\Users\San\DOCUME~1\KUSMANG\pascal\PE294D~1\Record\rsrc.o -s   -b base.$$$ -o c:\users\san\docume~1\kusmang\pascal\pe294d~1\record\record.exe link.res
if errorlevel 1 goto linkend
goto end
:asmend
echo An error occured while assembling %THEFILE%
goto end
:linkend
echo An error occured while linking %THEFILE%
:end
