@echo off

REM *** Close Directory Opus and DOpusRT.exe ***
"D:\Program Files\GPSoftware\Directory Opus\DOpusRT.exe" /CMD Close PROGRAM
"D:\Program Files\GPSoftware\Directory Opus\DOpusRT.exe" /dblclk=off

REM *** Pause for 3 seconds ***
ping 1.1.1.1 -n 1 -w 3000 > nul

REM *** Delete the history files ***
del /F /Q "%userprofile%\AppData\Local\GPSoftware\Directory Opus\State Data\dupe.osd"
del /F /Q "%userprofile%\AppData\Local\GPSoftware\Directory Opus\State Data\find.osd"
del /F /Q "%userprofile%\AppData\Local\GPSoftware\Directory Opus\State Data\ftplast.osd"
del /F /Q "%userprofile%\AppData\Local\GPSoftware\Directory Opus\State Data\lastrename.osd"
del /F /Q "%userprofile%\AppData\Local\GPSoftware\Directory Opus\State Data\sync.osd"
del /F /Q  /S "%userprofile%\AppData\Local\GPSoftware\Directory Opus\State Data\MRU\*.*"

echo "Directory Opus history has been deleted."

pause