#!/bin/bash
# Trap and signal handling patterns

tmpfile=$(mktemp)
trap "rm -f $tmpfile" EXIT

cleanup() {
    echo "Cleaning up..."
    rm -f "$tmpfile"
}
trap cleanup EXIT SIGINT SIGTERM

# Subshell trap
(
    trap "echo trapped in subshell" EXIT
    echo "in subshell"
)

# Error handling
set -euo pipefail
trap 'echo "Error on line $LINENO"' ERR
