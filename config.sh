#!/bin/bash

directory=.config

while read file; do
	ln -s "${directory}/${file}" ."${file}"
done

