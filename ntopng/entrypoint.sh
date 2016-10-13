#!/bin/sh

service redis-server start

ntopng -i "$PROBE_PORT" --community
