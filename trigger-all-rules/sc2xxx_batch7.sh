#!/bin/bash

# SH-2113 (SC2113)
function quit {
    exit
}

# SH-2114 (SC2114)
rm -rf /usr /lib/nvidia-current/xorg/xorg

# SH-2115 (SC2115)
STEAMROOT="/opt/steam"
rm -rf "$STEAMROOT/"*

# SH-2116 (SC2116)
name="world"
greeting=$(echo "Hello, $name")

# SH-2117 (SC2117)
whoami
su
whoami

# SH-2120 (SC2120)
sayhello2120() {
  echo "Hello $1"
}
sayhello2120

# SH-2121 (SC2121)
set var=42

# SH-2122 (SC2122)
[[ a <= b ]]

# SH-2123 (SC2123)
PATH=/my/dir
cat "$PATH/myfile"

# SH-2124 (SC2124)
var=$@
for i in $var; do echo "$i"; done

# SH-2125 (SC2125)
foo={1..9}
echo $foo

# SH-2126 (SC2126)
grep foo file.log | wc -l

# SH-2129 (SC2129)
echo foo >> outfile.log
date >> outfile.log
cat stuff >> outfile.log

# SH-2130 (SC2130)
[[ $foo -eq "Y" ]]

# SH-2139 (SC2139)
alias whereami="echo $PWD"

# SH-2140 (SC2140)
echo "<img src="foo.png" />" > file.html

# SH-2141 (SC2141)
IFS="\t"

# SH-2142 (SC2142)
alias archive='mv "$@" /backup'

# SH-2143 (SC2143)
if [ "$(find . | grep 'IMG[0-9]')" ]; then
  echo "Images found"
fi

# SH-2144 (SC2144)
if [ -e dir/*.mp3 ]; then
  echo "There are mp3 files."
fi

# SH-2145 (SC2145)
ARRAY_VAR=("foo" "bar" "baz")
printf "Error: %s\n" "Bad parameters: ${ARRAY_VAR[@]}"

# SH-2146 (SC2146)
find . -name '*.avi' -o -name '*.mkv' -exec cp {} /media \;

# SH-2147 (SC2147)
PATH="$PATH:~/bin"

# SH-2149 (SC2149)
array=(1 2 3)
index=42
echo $((array[$index]))

# SH-2150 (SC2150)
find . -type f -exec 'cat {} | wc -l' \;

# SH-2151 (SC2151)
myfunc2151() {
  return foo bar
}

# SH-2152 (SC2152)
myfunc2152() {
  return "Hello $USER"
}

# SH-2153 (SC2153)
MY_VARIABLE="hello world"
echo "$MYVARIABLE"

# SH-2268 (SC2268)
pass="swordfish"
[ "x$pass" = "xswordfish" ]

# SH-2324 (SC2324)
x=0
x+=1
echo $x

# SH-2327 (SC2327)
var=$(tr -d ':' < input.txt > output.txt)

# SH-2328 (SC2328)
result=$(cat data.csv > processed.csv)
