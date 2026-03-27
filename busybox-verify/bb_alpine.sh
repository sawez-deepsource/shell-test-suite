#!/bin/busybox sh
# Typical Alpine/Docker entrypoint patterns

set -e

# SC2086 - unquoted
DATADIR=/var/lib/data
mkdir -p $DATADIR

# SC2046 - unquoted command sub
chown $(id -u):$(id -g) /app

# SC2006 - backticks
TIMESTAMP=`date +%s`

# Pipe to while (SC2030)
count=0
echo "a b c" | while read word; do
    count=$((count + 1))
done
echo $count

# SC2064 - trap with expanding variable
tmpfile="/tmp/cleanup.$$"
trap "rm -f $tmpfile" EXIT

# SC2155 - declare and assign separately
export FOO=$(bar)
