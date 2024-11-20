@echo off

:: ===========================================================
::  _____      _                          
:: / ____|    | |                         
:: | (___   ___| |__   ___ _ __ ___   __ _ 
:: \___ \ / __| '_ \ / _ \ '_ ` _ \ / _` |
:: ____) | (__| | | |  __/ | | | | | (_| |
:: |_____/ \___|_| |_|\___|_| |_| |_|\__,_|
::                                        
:: iCloud Photo Downloader
:: Author: Schema
:: Description: This script downloads photos from a specified
:: iCloud library to the user's Pictures folder.
:: ===========================================================

:: Configuration
set APPLE_ID=your_apple_id@example.com
set PASSWORD=your_icloud_password
set DOWNLOAD_PATH=%USERPROFILE%\Pictures\iCloud_Photos

:: Create download directory if it doesn't exist
echo Creating download directory if it doesn't exist...
if not exist "%DOWNLOAD_PATH%" mkdir "%DOWNLOAD_PATH%"

:: List available iCloud libraries
echo Listing available libraries...
icloudpd --username %APPLE_ID% --password %PASSWORD% --list-libraries

:: Prompt user to select a library
echo.
set /p LIBRARY_ID="Please enter the Library ID you want to download from: "

:: Prompt user for folder structure preference
echo.
echo Folder structure options:
echo 1. Use default structure (YYYY/MM/DD)
echo 2. No folder structure (all photos in one directory)
set /p FOLDER_CHOICE="Enter your choice (1 or 2): "

:: Set folder structure based on user choice
if "%FOLDER_CHOICE%"=="1" (
    set FOLDER_PARAM=
) else (
    set FOLDER_PARAM=--folder-structure none
)

:: Download media from the specified library
echo Downloading media from the specified library...
icloudpd --username %APPLE_ID% --password %PASSWORD% --directory "%DOWNLOAD_PATH%" %FOLDER_PARAM% --set-exif-datetime --library %LIBRARY_ID% --recent 1000000

:: Count total downloaded files
echo Counting downloaded files...
for /f %%i in ('dir /s /b /a-d "%DOWNLOAD_PATH%" ^| find /c /v ""') do set FILE_COUNT=%%i

:: Display download summary
echo Total files downloaded: %FILE_COUNT%
echo Download complete!

pause