#!/bin/sh
# create symbolic links to the configuration files that can't be used with XDG
# execute from $HOME

program="$0"
directory="$(dirname ${program})"
ignore="$(basename ${program})"
for file in $(ls "${directory}" -I "${ignore}"); do
	#it will overwrite anything that you've got
	ln -sf "${directory}/${file}" ~/."${file}"
done
