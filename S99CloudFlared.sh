#!/bin/sh

CLOUDFLARED="/volume1/@appstore/cloudflared/cloudflared"
PIDFILE="/var/run/cloudflared.pid"


case "$1" in
	start)
		$CLOUDFLARED --config ./CloudFlared.yml > /dev/null 2&>1 &
		printf "[%4s]\n" "done"
		;;
	stop)
		printf "%-30s" "Stopping CloudFlared"
		kill `cat $PIDFILE` > /dev/null 2&>1
		rm $PIDFILE
		printf "[%4s]\n" "done"
		;;
	*)
		echo "Usage: $0 {start|stop}"
		exit 1
esac

exit 0
