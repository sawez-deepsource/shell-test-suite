#!/bin/sh
# Common POSIX sh pitfalls that shellcheck catches

# Unquoted variables
file="my file.txt"
cat $file

# Using == instead of =
if [ "$var" == "value" ]; then
    echo "bad"
fi

# Using -a instead of -e
if [ -a /etc/passwd ]; then
    echo "exists"
fi

# Backticks instead of $()
result=`date`

# Piping to while (variable scope)
count=0
echo "a b c" | while read word; do
    count=$((count + 1))
done
echo $count

# Using [[ ]] in sh
if [[ -f /etc/passwd ]]; then
    echo "exists"
fi

# Using source instead of .
source ./other.sh

# Using local (not POSIX)
myfunc() {
    local x=1
    echo $x
}
