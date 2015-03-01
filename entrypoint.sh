#!/bin/sh

for s in /entrypoint.d/*; do
	[ -x $s ] && $s
done

exec "$@"

