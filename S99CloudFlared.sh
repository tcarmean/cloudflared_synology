#!/bin/sh

PIDFILE="/var/run/cloudflared.pid"


case "$1" in
	start)
		/volume1/@appstore/cloudflared/cloudflared --config /volume1/@appstore/cloudflared/CloudFlared.yml &
		printf "[%4s]\n" "done"
		;;
	stop)
		printf "%-30s" "Stopping CloudFlared"
		rm $PIDFILE
		printf "[%4s]\n" "done"
		;;
	*)
		echo "Usage: $0 {start|stop}
		exit 1
esac

exit 0
