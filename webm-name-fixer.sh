#!/bin/bash

fixName()
{
	pushd "$DIR" > /dev/null
	for file in *.webm; do
		webmname=$(mediainfo "$file" | grep -o  "Movie name                               : .*" | cut -f2- -d:)
		if [[ -n "$webmname" ]]; then
			mv -n "$file" "$webmname".webm
		fi
	done
	popd > /dev/null
}

if [ $# -eq 0 ]; then
	DIR="./"
	fixName
	exit 0
elif [ $# -eq 1 ] && [ "$1" != -h ] && [ "$1" != --help ]; then
	DIR="$1"
	fixName
	exit 0
else
	echo "$0 Help."
	echo "This script renames webms, depending on their tags"
	echo "Usage         : $0 [DIR]"
	echo "Another usage : $0 "
	echo "Defaults to the current working directory if no path is given."
	exit 2
fi
