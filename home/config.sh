#!/bin/bash
#create symbolic links to the configuration files that can't be used
#with XDG 

#the standard input get the files (absolute o relative path)
#from inside ~/.config/home/
# ./config.sh < files

directory=$(pwd)
while read file; do
	#it will overwrite anything that you've got 
	ln -sf "${directory}/${file}" ~/."${file}"
done 

