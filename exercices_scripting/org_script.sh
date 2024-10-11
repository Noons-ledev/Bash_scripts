#!/bin/bash
initdir="/mnt/c/Users/nbrie/tri"
for f in "$initdir"/*; do 
if [[ $f == *.txt  ||  $f == *.pdf ]]; then
mv "$f" /mnt/c/Users/nbrie/Documents
echo $f "a été déplacé"
elif [[ $f == *.jpg  ||  $f == *.png ]]; then
mv "$f" /mnt/c/Users/nbrie/Pictures
echo $f "a été déplacé"
elif [[ $f == *.mp3  || $f == *.wav ]]; then
mv "$f" /mnt/c/Users/nbrie/Music
echo $f "a été déplacé"
fi
done