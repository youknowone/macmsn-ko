#!/bin/bash
if [ ! "$APP" ]; then
	APP=/Applications/Microsoft\ Messenger.app
fi

APPRES="$APP/Contents/Resources"
RES=`pwd`"/ko.src"
LPROJ=`pwd`"/ko.lproj"
rm -rf "$APPRES"/ko.lproj
cp -R "$APPRES"/en.lproj "$APPRES"/ko.lproj
rm -rf "$APPRES"/ko.lproj/*.nib
cp -R "$LPROJ"/*.nib "$APPRES"/ko.lproj/
cp "$LPROJ"/*.strings "$APPRES"/ko.lproj/
