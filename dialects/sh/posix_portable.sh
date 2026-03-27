#!/bin/sh
# Strictly POSIX-compliant patterns

# No arrays, no [[ ]], no process substitution

# String operations with parameter expansion
var="hello world"
echo "${var%% *}"
echo "${var#* }"
echo "${#var}"

# Arithmetic
i=0
while [ "$i" -lt 10 ]; do
    i=$((i + 1))
    echo "$i"
done

# Command substitution
files=$(find . -name "*.txt" -print)
echo "$files"

# Here document
cat << EOF
Hello $USER
Today is $(date)
EOF

# Functions (POSIX style)
greet() {
    echo "Hello, $1"
}
greet "World"

# Test with = (not ==)
if [ "$1" = "test" ]; then
    echo "testing"
fi
