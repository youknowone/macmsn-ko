#!/bin/bash
if [ ! "$APP" ]; then
	APP=/Applications/Microsoft\ Messenger.app
fi

rm -rf "$APPRES"/ko.lproj/*.nib
cp -R "$LPROJ"/*.nib "$APPRES"/ko.lproj/
cp "$LPROJ"/*.strings "$APPRES"/ko.lproj/
