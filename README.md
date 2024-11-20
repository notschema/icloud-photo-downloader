# iCloud Photo Downloader

## Overview

The **iCloud Photo Downloader** is a batch script designed to facilitate the downloading of photos from a specified iCloud library directly to your local Pictures folder. This script leverages the capabilities of the `icloudpd` tool to provide a user-friendly interface for selecting libraries and customizing the folder structure for downloaded files.

## Author

**Schema**

## Description

This script automates the process of downloading photos from your iCloud account. Users can choose from available libraries, select their preferred folder structure for organizing downloaded photos, and it handles all necessary commands to retrieve the files efficiently.

## Features

- Downloads photos from a specified iCloud library.
- Option to choose folder structure:
  - Default structure organized by date (YYYY/MM/DD).
  - All photos in a single directory.
- Easy setup with minimal configuration required.
- Simple command-line interface for user interaction.

## Prerequisites

Before using this script, ensure you have the following:

- A valid iCloud account with photos stored in your library.
- The `icloudpd` tool installed on your system. You can find it [here](https://github.com/icloud-photos-downloader/icloud_photos_downloader).
- Access to a command line interface (Command Prompt on Windows).

## Configuration

To configure the script for your use:

1. Open the script in a text editor.
2. Locate the following lines and replace the placeholders with your actual iCloud credentials:
   
set APPLE_ID=your_apple_id@example.com
set PASSWORD=your_icloud_password

3. Optionally, change the `DOWNLOAD_PATH` if you prefer a different directory for saving your photos:
set DOWNLOAD_PATH=%USERPROFILE%\Pictures\iCloud_Photos


## Usage Instructions

1. **Run the Script**: Double-click the script or execute it from the command prompt.
2. **Select Library**: After listing available libraries, input the Library ID you wish to download from when prompted.
3. **Choose Folder Structure**: Select your preference for folder structure by entering `1` (default structure) or `2` (no structure).
4. **Download Process**: The script will initiate the download process and display the total number of files downloaded upon completion.

## Example Output

Upon successful execution, the output will look something like this:

Listing available libraries...
Please enter the Library ID you want to download from: 1234567890
Folder structure options:
Use default structure (YYYY/MM/DD)
No folder structure (all photos in one directory)
Enter your choice (1 or 2): 1
Downloading media from the specified library...
Counting downloaded files...
Total files downloaded: 150
Download complete!
