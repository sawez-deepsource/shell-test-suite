#!/bin/dash
# Dash-specific patterns (strict POSIX subset)

set -eu

# No arrays, no [[ ]], no process substitution, no brace expansion

# Portable test
if [ -f /etc/hostname ]; then
    hostname=$(cat /etc/hostname)
    echo "Host: $hostname"
fi

# Dash supports local
myfunc() {
    local result
    result=$(echo "hello" | tr 'a-z' 'A-Z')
    echo "$result"
}
myfunc

# Arithmetic
n=0
while [ $n -lt 5 ]; do
    n=$((n + 1))
done

# Read with IFS
echo "a:b:c" | while IFS=: read -r x y z; do
    echo "$x $y $z"
done

# Trap
trap 'echo "exiting"; exit' EXIT INT TERM

# Test with -e (not -a)
if [ -e /etc/shells ]; then
    echo "found"
fi
