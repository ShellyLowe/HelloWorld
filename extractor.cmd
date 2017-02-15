@echo on

REM ####################################################
REM Extract files with a specific format to
REM a folder
REM ####################################################
REM
echo Arguments
echo %1 working directory
echo %2 file extension
REM
REM ####################################################

ECHO START
FOR /R %1 %%G IN (*.%2) DO (
	ECHO %%G
	MOVE "%%G" %1
)

ECHO END