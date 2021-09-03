#!/bin/bash

xcodebuild archive -scheme Bugsplat -archivePath ~/Desktop/Bugsplat-iphoneos.xcarchive -sdk iphoneos SKIP_INSTALL=NO ENABLE_BITCODE=NO
xcodebuild archive -scheme Bugsplat -archivePath ~/Desktop/Bugsplat-iphonesimulator.xcarchive -sdk iphonesimulator SKIP_INSTALL=NO ENABLE_BITCODE=NO
xcodebuild -create-xcframework -framework ~/Desktop/Bugsplat-iphonesimulator.xcarchive/Products/Library/Frameworks/Bugsplat.framework -framework ~/Desktop/Bugsplat-iphoneos.xcarchive/Products/Library/Frameworks/Bugsplat.framework -output ~/Desktop/Bugsplat.xcframework
rm -rf ~/Desktop/Bugsplat-iphoneos.xcarchive
rm -rf ~/Desktop/Bugsplat-iphonesimulator.xcarchive
