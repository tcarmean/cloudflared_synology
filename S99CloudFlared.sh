#!/bin/sh

CLOUDFLARED="/volume1/@appstore/cloudflared/cloudflared"
PIDFILE="/var/run/cloudflared.pid"


case "$1" in
	start)
		$CLOUDFLARED --config ./CloudFlared.yml &
		printf "[%4s]\n" "done"
		;;
	stop)
		printf "%-30s" "Stopping CloudFlared"
		kill `cat $PIDFILE`
		rm $PIDFILE
		printf "[%4s]\n" "done"
		;;
	*)
		echo "Usage: $0 {start|stop}"
		exit 1
esac

exit 0
