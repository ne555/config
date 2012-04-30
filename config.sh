#!/bin/bash

#execute from $HOME
# .config/config.sh < .config/files

directory=.config

while read file; do
	#it will overwrite anything that you've got 
	ln -sf "${directory}/${file}" ."${file}"
done 

