#!/bin/bash
curl -o Hydrogen_MacOS.zip https://cdn.hydrogen.sh/Hydrogen_MacOS.zip
unzip -qq -o Hydrogen_MacOS.zip > /dev/null 2>&1
rm -r /Applications/Hydrogen.app > /dev/null 2>&1
mv "Hydrogen MacOS.app" /Applications/Hydrogen.app
rm Hydrogen_MacOS.zip
echo Hydrogen has been installed!
