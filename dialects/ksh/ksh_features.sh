#!/bin/ksh
# Ksh-specific features

# Ksh arrays
set -A fruits apple banana cherry
echo "${fruits[0]}"
echo "${#fruits[@]}"

# Typeset (ksh's declare)
typeset -i count=0
count+=1
echo $count

# Ksh coprocess
ls |&
read -p line
echo "$line"

# Print (ksh builtin)
print "Hello from ksh"
print -n "No newline"

# Ksh [[ ]] with pattern
if [[ "hello" == h* ]]; then
    print "matched"
fi

# Ksh arithmetic
(( x = 5 + 3 ))
print $x

# Named pipe substitution
diff <(sort file1) <(sort file2)

# Ksh function syntax
function greet {
    typeset name=$1
    print "Hello, $name"
}
greet "World"
