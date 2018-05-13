#!/bin/sh

case "$1" in
	start)
		/volume1/@appstore/cloudflared/cloudflared proxy-dns --address 0.0.0.0 &
		printf "[%4s]\n" "done"
		;;
	stop)
		printf "%-30s" "Stopping CloudFlared"
		printf "[%4s]\n" "done"
		;;
	*)
		echo "Usage: $0 {start|stop}
		exit 1
esac

exit 0
