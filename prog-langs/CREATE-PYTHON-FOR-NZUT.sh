#!/bin/bash


if [ ! -d python-for-nzut ] ; then
    echo "----"
    echo "Creating 'python-for-nzut/'"
    echo "----"
    python -m venv python-for-nzut
fi

echo "Activating 'python-for-nzut'"
source ./python-for-nzut/Scripts/activate

pip install python-dotenv

echo "Installing youtube downloader package: 'yt-dlp'"
pip install yt-dlp yt-dlp-ejs

echo "Installing playwright for browser automation: 'yt-dlp'"
pip install playwright
playwright install chromium

echo ""
echo "----"
echo "Remember to subsequently source ./SETUP.bash to activate python-for-nzut"
echo "----"




