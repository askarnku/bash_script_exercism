#!/bin/bash

folder_exists=$(ls ~ | grep performance)
echo $folder_exists

if [ -z $folder_exists ]; then
	cd ~
	mkdir performance
else
	echo "Folder does exist"
fi

cd ~/performance
free >> memory.log
