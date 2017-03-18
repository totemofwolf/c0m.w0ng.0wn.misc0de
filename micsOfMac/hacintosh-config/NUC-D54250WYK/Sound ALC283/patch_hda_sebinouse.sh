#!/bin/bash

codec=ALC283
unpatched=/System/Library/Extensions

# AppleHDA patching function
function createAppleHDAInjector()
{
    echo "Creating a copy of AppleHDA for $1..."
    cp -R $unpatched/AppleHDA.kext/ AppleHDA.kext/
    echo "1/2 : Updating Layout/Platform"
    cp ./Resources/*.zlib AppleHDA.kext/Contents/Resources/
    echo "2/2 : Updating plist"
    plist=AppleHDA.kext/Contents/PlugIns/AppleHDAHardwareConfigDriver.kext/Contents/Info.plist
    /usr/libexec/plistbuddy -c "Delete ':IOKitPersonalities:HDA Hardware Config Resource:HDAConfigDefault'" $plist
    /usr/libexec/plistbuddy -c "Merge ./Resources/ahhcd.plist ':IOKitPersonalities:HDA Hardware Config Resource'" $plist
    echo "AppleHDA patching Done."
}
# fix permissions and rebuild cache
function fixAppleHDAPermissions()
{
	echo "Fix permissions ..."
	sudo chmod -R 755 $unpatched/AppleHDA.kext/
	sudo chown -R 0:0 $unpatched/AppleHDA.kext/
	echo "Kernel cache..."
	sudo touch $unpatched/
	sudo kextcache -Boot -U /
}	
rm -R AppleHDA.kext/
createAppleHDAInjector "$codec"
# Copy to SLE
echo "Copy to /S/L/E/"
sudo cp -R $unpatched/AppleHDA.kext/ AppleHDA.back.kext/
sudo rm -R $unpatched/AppleHDA.kext/
sudo cp -R AppleHDA.kext/ $unpatched/AppleHDA.kext/
sudo rm -R AppleHDA.kext/
fixAppleHDAPermissions "$codec"