#!/bin/sh

service redis-server start

ntopng \
  --community \
  --user ntopng \
  --data-dir /data \
  --interface "$PROBE_PORT" \
  --dns-mode 1

