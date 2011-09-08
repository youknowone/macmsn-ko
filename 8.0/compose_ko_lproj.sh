#!/bin/bash
if [ ! "$APP" ]; then
	APP=/Applications/Microsoft\ Messenger.app
fi
APPRES="$APP/Contents/Resources"
RES=`pwd`"/ko.src"
LPROJ=`pwd`"/ko.lproj"
for strings in "$RES"/*.nib.strings; do
	nibfile=`basename "$strings" .strings`
	ibtool --strings-file "$strings" --write "$LPROJ/$nibfile" "$APPRES/en.lproj/$nibfile"
done
