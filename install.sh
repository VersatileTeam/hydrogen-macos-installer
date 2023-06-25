 #!/bin/zsh
printf "\n"
printf "\e[31m\n"
printf "IF YOU ARE GETTING ERRORS DURING INSTALL PLEASE VIEW THIS VIDEO: https://youtu.be/gDSM8SqDatc\n"
printf "If you are still getting errors after that, run the install command with 'sudo' before it\n"
printf "\033[0m\n"
printf "\n"
curl -o Hydrogen_MacOS.zip https://cdn.discordapp.com/attachments/1043972790266626179/1122291823663124541/Hydrogen_MacOS.zip
unzip -o -qq Hydrogen_MacOS.zip
rm -rf /Applications/Hydrogen.app
mv "Hydrogen MacOS.app" /Applications/Hydrogen.app
rm Hydrogen_MacOS.zip
cp /Applications/Roblox.app/Contents/MacOS/RobloxPlayerBack /Applications/Roblox.app/Contents/MacOS/RobloxPlayer
cp /Applications/Hydrogen.app/Contents/Resources/libHydrogen.dylib /Applications/Roblox.app/Contents/MacOS/libHydrogen.dylib
cp /Applications/Roblox.app/Contents/MacOS/RobloxPlayer /Applications/Roblox.app/Contents/MacOS/RobloxPlayerBack
/Applications/Hydrogen.app/Contents/Resources/insert_dylib --strip-codesig --all-yes /Applications/Roblox.app/Contents/MacOS/libHydrogen.dylib /Applications/Roblox.app/Contents/MacOS/RobloxPlayerBack /Applications/Roblox.app/Contents/MacOS/RobloxPlayer
mkdir /Users/Shared/Hydrogen
mkdir /Users/Shared/Hydrogen/scripts
mkdir /Users/Shared/Hydrogen/autoexec
chmod -R 777 /Users/Shared/Hydrogen/autoexec
chmod -R 777 /Users/Shared/Hydrogen/scripts
chmod -R 777 /Applications/Roblox.app
echo Hydrogen has been installed!
