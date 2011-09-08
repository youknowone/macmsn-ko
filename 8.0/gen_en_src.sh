#!/bin/bash
if [ ! "$APP" ]; then
	APP=/Applications/Microsoft\ Messenger.app
fi
RES=`pwd`"/en.src"
for nib in "$APP"/Contents/Resources/en.lproj/*.nib; do
	echo 'NIB: '"$nib"
	nibfile=`basename "$nib"`
	echo 'NIBFILE: '"$nibfile"
	ibtool --generate-stringsfile "$RES/$nibfile.utf16" "$nib"
	iconv -f utf-16 -t utf-8 "$RES/$nibfile.utf16" > "$RES/$nibfile.strings"
	rm "$RES/$nibfile.utf16"
done
