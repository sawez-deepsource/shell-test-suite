#!/bin/bash
# Bash arrays, process substitution, [[ ]]

declare -a fruits=("apple" "banana" "cherry")
echo "${fruits[@]}"
echo "${#fruits[@]}"

# Associative array
declare -A colors
colors[red]="#ff0000"
colors[blue]="#0000ff"
echo ${colors[red]}

# Process substitution
diff <(sort file1.txt) <(sort file2.txt)

# [[ ]] with regex
if [[ "hello123" =~ ^[a-z]+[0-9]+$ ]]; then
    echo "matched"
fi

# Here string
read -r word <<< "hello world"
echo $word

# Brace expansion
echo {1..10}
mkdir -p /tmp/test/{a,b,c}/{x,y,z}
