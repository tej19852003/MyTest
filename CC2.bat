@echo off
echo starting cache deletion operation
echo -------------------------
echo starting flash player cache deletion
echo -------------------------

del /Q /S "%appdata%\Adobe\Flash Player" > temp.txt
del /Q /S "%appdata%\Macromedia\Flash Player" > temp.txt

echo flash player cache cleared successfully
echo -------------------------
echo starting internet explorer cache deletion

RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 255

echo -------------------------
echo internet explorer cache cleared successfully
echo -------------------------

echo starting java cache deletion
javaws -uninstall 

echo -------------------------
echo java cache cleared successfully
echo -------------------------

echo starting DNS cache deletion
echo -------------------------
ipconfig /flushdns

echo -------------------------
echo DNS cache cleared successfully
echo -------------------------

echo please let Support team member know cache was cleared successfully
del temp.txt
pause