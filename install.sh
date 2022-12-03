 #!/bin/bash
printf "\n"
printf "\e[33;1m%s\n" "IF YOU ARE GETTING ERRORS DURING INSTALL PLEASE VIEW THIS VIDEO: https://youtu.be/gDSM8SqDatc"
printf "\n"
curl -o Hydrogen_MacOS.zip https://cdn.discordapp.com/attachments/1043972790266626179/1048454627575738458/Hydrogen_MacOS.zip
unzip -o -qq Hydrogen_MacOS.zip
rm -rf /Applications/Hydrogen.app
mv "Hydrogen MacOS.app" /Applications/Hydrogen.app
rm Hydrogen_MacOS.zip
cp /Applications/Hydrogen.app/Contents/Resources/libHydrogen.dylib /Applications/Roblox.app/Contents/MacOS/libHydrogen.dylib
cp /Applications/Roblox.app/Contents/MacOS/RobloxPlayer /Applications/Roblox.app/Contents/MacOS/RobloxPlayerBack
/Applications/Hydrogen.app/Contents/Resources/insert_dylib --strip-codesig --all-yes /Applications/Roblox.app/Contents/MacOS/libHydrogen.dylib /Applications/Roblox.app/Contents/MacOS/RobloxPlayerBack /Applications/Roblox.app/Contents/MacOS/RobloxPlayer
echo Hydrogen has been installed!
