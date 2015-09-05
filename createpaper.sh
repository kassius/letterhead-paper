#!/bin/bash

if [ "$#" -lt 1 ]
then
	echo "Use: bash createpaper.sh <FILENAME> [--transparency]"
	exit -1;
fi

FILENAME=$1

while test $# -gt 0
do
	case "$1" in
		--transparency) TRANSPARENCY=true
			;;
	esac
	shift
done

if [ ! $TRANSPARENCY ]
then
		INPUT_MODEL="$HOME/Documents/Letterheads/letterhead-final.png"
else
		INPUT_MODEL="$HOME/Documents/Letterheads/letterhead-transparent-final.png"
fi

convert 											\
												\
		$INPUT_MODEL									\
												\
		-font '/usr/share/fonts/truetype/inconsolata/Inconsolata.otf'			\
		-fill '#0008'									\
		-kerning -1.3									\
		-density 400									\
		-pointsize 3									\
		-interline-spacing -5								\
		-annotate +36+97 '@-'								\
												\
		"$FILENAME"

if [ -e "$FILENAME" ]
then
	echo "$FILENAME created successfully!"
	exit 0
else
	echo "error creating $FILENAME"
	exit -2
fi
