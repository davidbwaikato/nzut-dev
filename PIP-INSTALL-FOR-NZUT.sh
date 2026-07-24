#!/bin/bash
set -euo pipefail


if [ -d prog-langs/python-for-nzut ] ; then
    echo "Activating 'python-for-nzut'"
    source ./prog-langs/python-for-nzut/Scripts/activate
else
    echo "====" >&2
    echo "Warning: Failed to find:'python-for-nzut/'" >&2
    echo "Have you installed the Python venv for NZUT?" >&2
    echo "====" >&2
fi


# Upgrade pip if needed to prevent potential warning messages about it
# being out of date

python -m pip install --upgrade pip


echo "Installing 'dotenv' for API Keys and Environment Variable settings'"
pip install python-dotenv

echo "Installing youtube downloader package: 'yt-dlp'"
pip install yt-dlp yt-dlp-ejs

echo "Installing 'pillow' for image resizing"
pip install pillow

echo "Installing 'pypdfium2' for PDF to Image conversion"
pip install pypdfium2

echo "Installing playwright for browser automation: 'playwright'"
pip install playwright
echo "Installing chromium for use with playwright"
playwright install chromium


#echo ""
#echo "----"
#echo "Remember to subsequently source ./SETUP.bash to activate python-for-nzut"
#echo "----"




