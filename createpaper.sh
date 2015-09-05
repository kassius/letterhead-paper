#!/bin/bash

if [ "$#" -ne 1 ]
then
	echo "Use: bash createpaper.sh <FILENAME>"
	exit -1;
fi

convert 											\
												\
		~/Documents/Letterheads/letterhead-final.png					\
												\
		-font '/usr/share/fonts/truetype/inconsolata/Inconsolata.otf'			\
		-fill '#0008'									\
		-kerning -1.3									\
		-density 400									\
		-pointsize 3									\
		-interline-spacing -5								\
		-annotate +36+97 '@-'								\
												\
												\
		"$1"
if [ -e "$1" ]
then
	echo "$1 created successfully!"
	exit 0
else
	echo "error creating $1"
	exit -2
fi
