#!/bin/bash
# Advanced bash features

# Nameref
declare -n ref=myvar
myvar="hello"
echo $ref

# mapfile/readarray
mapfile -t lines < /etc/passwd
echo "${lines[0]}"

# Coprocess
coproc myproc { cat; }
echo "hello" >&${myproc[1]}
read -r line <&${myproc[0]}

# extglob
shopt -s extglob
ls !(*.log)

# Arithmetic for loop
for ((i=0; i<10; i++)); do
    echo $i
done

# Select
select opt in "Option 1" "Option 2" "Quit"; do
    case $opt in
        "Quit") break ;;
        *) echo "You chose $opt" ;;
    esac
done
