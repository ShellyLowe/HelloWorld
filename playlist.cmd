@echo off
rem creates a playlist with files in the given path

echo %1 path name

cd /d %1

:GetFolder
for %%* in (.) do set filename="%%~n*"
rem set filename=album

:CreateM3UFile
type NUL > %filename%.m3u

:AddFileNames
dir /b *.mp3 >> %filename%.m3u

:printFile
type %filename%.m3u

Pause
