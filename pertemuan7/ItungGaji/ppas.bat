@echo off
SET THEFILE=c:\users\san\docume~1\kusmang\pascal\pe98e1~1\itungg~1\gajih.exe
echo Linking %THEFILE%
c:\dev-pas\bin\ldw.exe  -s   -b base.$$$ -o c:\users\san\docume~1\kusmang\pascal\pe98e1~1\itungg~1\gajih.exe link.res
if errorlevel 1 goto linkend
goto end
:asmend
echo An error occured while assembling %THEFILE%
goto end
:linkend
echo An error occured while linking %THEFILE%
:end
