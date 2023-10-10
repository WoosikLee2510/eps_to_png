#!/bin/sh

find . -type f -name '*.eps' |
while read -r f; do
    filename=$(basename "$f" .eps).png
    pathdir=$(dirname "$f")
    echo $f
    convert $f
done
