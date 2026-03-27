#!/bin/busybox sh
# BusyBox utility patterns

# No arrays
# No process substitution
# No [[ =~ ]] regex

# Simple file operations
for f in /tmp/*.log; do
    [ -f "$f" ] || continue
    size=$(wc -c < "$f")
    if [ "$size" -gt 1000000 ]; then
        rm "$f"
    fi
done

# Network check
if wget -q -O /dev/null http://example.com 2>/dev/null; then
    echo "Network OK"
else
    echo "Network down"
fi

# User management
if ! id appuser > /dev/null 2>&1; then
    adduser -D -H appuser
fi

chown -R appuser:appuser /app
exec su-exec appuser /app/server
