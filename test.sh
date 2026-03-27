#!/bin/bash

# --- Bug risk issues ---
# SC1000: Unescaped $ in literal context
echo "Price is $"

# SC1012: \n is just literal 'n' here
echo "hello\nworld"

# SC2086: Double quote to prevent globbing and word splitting
filename="my file.txt"
cat $filename

# SC2046: Quote this to prevent word splitting
cp $(find . -name "*.bak") /tmp/

# SC2006: Use $(...) instead of legacy backticks
files=`ls`

# --- Security issues ---
# SC2091: Remove surrounding $() to avoid executing output
$(cat commands.txt)

# --- Performance issues ---
# SC2002: Useless use of cat
cat file.txt | grep "pattern"

# SC2012: Use find instead of ls to better handle non-alphanumeric filenames
ls -l | grep "\.sh$"

# --- Anti-pattern issues ---
# SC2015: Note that A && B || C is not if-then-else
true && echo "yes" || echo "no"

# SC2028: echo won't expand escape sequences
echo "line1\nline2"

# SC2034: Variable appears unused
unused_var="hello"

# --- Style issues ---
# SC2005: Useless echo
echo "$(cat file.txt)"

# SC2116: Useless echo
result=$(echo "hello")

# --- Issues that test new v0.10.0+ checks ---
# SC2324: x+=1 appends instead of increments (new in v0.10.0)
x=0
x+=1
echo $x

# SC2329: Unused function (new in v0.11.0)
unused_function() {
    echo "I'm never called"
}

# --- Bashisms for sh dialect testing ---
# SC3012: Lexicographic comparison bashism (new in v0.10.0)
if [ "a" \< "b" ]; then
    echo "less"
fi

# --- General test ---
for f in $(ls *.txt); do
    echo $f
done

if [ "$1" == "test" ]; then
    echo "testing"
fi
