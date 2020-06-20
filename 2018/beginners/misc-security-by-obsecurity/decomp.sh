#!/bin/bash

while [ "`find . -type f -name 'pass*' | wc -l`" -gt 0 ];
do
		find -type f -name "pass*" -exec 7z e '{}' \; -exec rm -- '{}' \;;
done
