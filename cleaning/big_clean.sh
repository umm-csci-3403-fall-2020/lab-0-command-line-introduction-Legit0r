#!/usr/bin/env bash


#tar file being cleaned
tar=$1
#Starting Directory
cleaning=$(pwd)
#Temp Directory
SCRATCH=`mktemp --directory`

#Extracts 'tar' into temp directory
tar -zxf "$tar" -C "$SCRATCH"
#Enters temp directory
cd "$SCRATCH" || exit
#Cleans
grep -rl 'DELETE ME!' . | xargs rm

#Takes filename without .tgz
tar_name=$(basename -s .tgz "$tar")
#Creates new tar file
tar -czf cleaned_"$tar" "$tar_name"
#Moves cleaned file into Starting Directory
mv cleaned_"$tar" "$cleaning"
