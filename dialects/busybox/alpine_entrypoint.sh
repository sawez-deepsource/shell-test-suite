#!/bin/busybox sh
# Typical Alpine/BusyBox entrypoint

set -e

DATADIR="/var/lib/app"
mkdir -p "$DATADIR"

# BusyBox supports basic [[ ]] but not glob matching
if [[ -f "/etc/app/config.yml" ]]; then
    echo "Config found"
fi

# This would trigger SC2330 — glob in [[ ]]
if [[ "$1" == start* ]]; then
    echo "Starting..."
fi

# BusyBox supports ==
if [ "$1" == "run" ]; then
    echo "Running"
fi

# Signal handling
trap 'echo "Shutting down"; exit 0' TERM INT

# Wait for signals
while true; do
    sleep 1
done
