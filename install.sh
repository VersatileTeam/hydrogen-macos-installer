#!/bin/bash
curl -o Hydrogen_MacOS.zip https://cdn.discordapp.com/attachments/1043972790266626179/1048432750937522186/Hydrogen_MacOS.zip
unzip -qq -o Hydrogen_MacOS.zip > /dev/null 2>&1
rm -r /Applications/Hydrogen.app > /dev/null 2>&1
mv "Hydrogen MacOS.app" /Applications/Hydrogen.app
rm Hydrogen_MacOS.zip
mkdir /Applications/Roblox.app/Contents/Resources/Hydrogen
echo Hydrogen has been installed!
