#!/bin/bash
set -eux


filename='move_list'
n=1
while read line; do
echo "Line No. $n : $line"
line=${line%/}
rsync -av --ignore-existing "${line}" /home/alex/gdrive_plex/moveme/
echo ""
n=$((n+1))
done < $filename

