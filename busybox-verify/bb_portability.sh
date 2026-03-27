#!/bin/busybox sh
# Portability checks specific to busybox

# == vs = in test
if [ "$1" == "hello" ]; then
    echo "hi"
fi

# Arrays (not supported in busybox)
arr=(one two three)
echo ${arr[0]}

# Process substitution (not supported)
while read line; do
    echo "$line"
done < <(cat /etc/passwd)

# [[ with regex
if [[ "$1" =~ ^[0-9]+$ ]]; then
    echo "number"
fi

# Test -v (not portable)
if [ -v HOME ]; then
    echo "HOME is set"
fi

# Legacy -a for file test
if [ -a /etc/hostname ]; then
    echo "exists"
fi
