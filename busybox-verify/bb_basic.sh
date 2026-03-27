#!/bin/busybox sh
# Basic busybox script — tests how each version handles the shebang

name="world"
echo "Hello $name"

# Unquoted variable (SC2086)
file="my file.txt"
cat $file

# Unused variable (SC2034)
unused="something"

# Using [[ ]] which busybox partially supports
if [[ -f "/etc/hostname" ]]; then
    echo "found"
fi

# Glob in [[ ]] — SC2330 in v0.11.0
if [[ "$name" == w* ]]; then
    echo "starts with w"
fi

# Using local (busybox supports it)
myfunc() {
    local x=1
    echo $x
}
myfunc
