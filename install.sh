 #!/bin/bash
printf "\n!!! IF YOU SEE ANY Operation not permitted ERRORS, PLEASE VIEW THE VIDEO AT https://www.youtube.com/watch\?v\=gDSM8SqDatc !!!\033[0m\n\n"
curl -o Hydrogen_MacOS.zip https://cdn.discordapp.com/attachments/1043972790266626179/1048442240659361903/Hydrogen_MacOS.zip
unzip -o -qq Hydrogen_MacOS.zip
rm -r /Applications/Hydrogen.app
mv "Hydrogen MacOS.app" /Applications/Hydrogen.app
rm Hydrogen_MacOS.zip
cp /Applications/Hydrogen.app/Contents/Resources/libHydrogen.dylib /Applications/Roblox.app/Contents/MacOS/libHydrogen.dylib
cp /Applications/Roblox.app/Contents/MacOS/RobloxPlayer /Applications/Roblox.app/Contents/MacOS/RobloxPlayerBack
/Applications/Hydrogen.app/Contents/Resources/insert_dylib --strip-codesig --all-yes /Applications/Roblox.app/Contents/MacOS/libHydrogen.dylib /Applications/Roblox.app/Contents/MacOS/RobloxPlayerBack /Applications/Roblox.app/Contents/MacOS/RobloxPlayer
echo Hydrogen has been installed!
