#!/bin/sh

logdir=/var/log/carbon

if [ ! -d "$logdir" ]; then
	echo "creating directory $logdir"
	install -d $logdir -o carbon -g carbon
fi

chown -R carbon:carbon /var/log/carbon

