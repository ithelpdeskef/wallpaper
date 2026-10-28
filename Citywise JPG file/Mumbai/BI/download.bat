@echo off
setlocal

REM ==============================
REM Desktop Wallpaper
REM ==============================
set "URL=https://raw.githubusercontent.com/ithelpdeskef/wallpaper/main/Citywise%%20JPG%%20file/Mumbai/BI/mbdswp.jpg"
set "DEST=C:\Windows\Web\wallpaper.jpg"
set "TEMP1=%TEMP%\wallpaper_new.jpg"

curl.exe -L --silent --show-error --fail -o "%TEMP1%" "%URL%"

if not errorlevel 1 (
    if exist "%TEMP1%" (
        copy /Y "%TEMP1%" "%DEST%" >nul 2>&1
    )
)

del /F /Q "%TEMP1%" >nul 2>&1

REM ==============================
REM Lock Screen Wallpaper
REM ==============================
set "URL2=https://raw.githubusercontent.com/ithelpdeskef/wallpaper/main/Citywise%%20JPG%%20file/Mumbai/BI/mbdssl.jpg"
set "DEST2=C:\Windows\Web\lock.jpg"
set "TEMP2=%TEMP%\lock_new.jpg"

curl.exe -L --silent --show-error --fail -o "%TEMP2%" "%URL2%"

if not errorlevel 1 (
    if exist "%TEMP2%" (
        copy /Y "%TEMP2%" "%DEST2%" >nul 2>&1
    )
)

del /F /Q "%TEMP2%" >nul 2>&1

exit /b 0