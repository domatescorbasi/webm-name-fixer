#!/bin/bash

for file in *.webm; do
	webmname=$(mediainfo "$file" | grep -o  "Movie name                               : .*" | cut -f2- -d:)
	if [[ -n "$webmname" ]]; then
		mv -n "$file" "$webmname".webm
	fi
done

