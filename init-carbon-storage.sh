#!/bin/sh

for dir in /var/lib/carbon/{lists,rrd,whisper}; do
	if [ ! -d "$dir" ]; then
		echo "creating directory $dir..."
		install -d $dir
	fi
done

chown -R carbon:carbon /var/lib/carbon

