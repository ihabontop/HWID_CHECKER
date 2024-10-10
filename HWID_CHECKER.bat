@echo off
chcp 65001 >nul
title HWID Checker
echo **********************************
color 0F
echo **********************************

:start
cls

echo Disque :
powershell -Command "Get-WmiObject Win32_DiskDrive | Select-Object Model, SerialNumber"

echo CPU :
powershell -Command "Get-WmiObject Win32_Processor | Select-Object ProcessorId"

echo BIOS :
powershell -Command "Get-WmiObject Win32_BIOS | Select-Object SerialNumber"

echo Carte Mère :
powershell -Command "Get-WmiObject Win32_BaseBoard | Select-Object SerialNumber"

echo UUID smBIOS :
powershell -Command "Get-WmiObject Win32_ComputerSystemProduct | Select-Object UUID"

echo Adresse MAC :
powershell -Command "Get-NetAdapter | Select-Object MacAddress"

echo.
echo Appuyez sur une touche pour obtenir à nouveau les informations matérielles.
pause >nul
goto start
