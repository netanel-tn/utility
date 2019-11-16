@echo off
set mainTitle=Fix My Wlan Bug
title %mainTitle%
echo %mainTitle%
echo =============================================
echo.

echo Run netsh wlan disconnect...
netsh wlan disconnect > nul
title %mainTitle% - 1
echo.

echo Wait...
timeout 7 > nul
echo.

echo Run netsh wlan connect name=Netanel-Main...
netsh wlan connect name=Netanel-Main > nul
title %mainTitle% - 2
echo.

echo Done!
timeout 10 > nul
exit
