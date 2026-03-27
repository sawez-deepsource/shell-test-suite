#!/bin/bash

# SH-2105 (SC2105)
case "$1" in
    -v)
       verbose=1
       break
       ;;
    -d)
       debug=1
esac

# SH-2106 (SC2106)
for i in a b c; do false | break; done; echo ${PIPESTATUS[@]}

# SH-2107 (SC2107)
[ "$1" = "-v" && -z "$2" ]

# SH-2108 (SC2108)
[[ "$1" = "-v" -a -z "$2" ]]

# SH-2109 (SC2109)
[ "$1" = "-v" || "$1" = "-help" ]

# SH-2110 (SC2110)
[[ "$1" = "-v" -o "$1" = "-help" ]]

# SH-2113 (SC2113)
function quit {
    exit
}

# SH-2114 (SC2114)
rm -rf /usr /lib/nvidia-current/xorg/xorg

# SH-2115 (SC2115)
rm -rf "$STEAMROOT/"*

# SH-2116 (SC2116)
greeting=$(echo "Hello, $name")
# or
tar czf "$(echo "$(date +%F).tar.gz")" *

# SH-2117 (SC2117)
whoami
su
whoami

# SH-2120 (SC2120)
sayhello() {
  echo "Hello $1"
}
sayhello

# SH-2121 (SC2121)
set var=42
set var 42

# SH-2122 (SC2122)
[[ "a" <= "b" ]]

# SH-2123 (SC2123)
PATH=/my/dir
cat "$PATH/myfile"

# SH-2124 (SC2124)
# Want to store multiple elements in var
var=$@
for i in $var; do ..; done

# SH-2125 (SC2125)
foo={1..9}
echo $foo

# SH-2126 (SC2126)
if grep -q pattern file; then
  echo "The file contains the pattern"
fi

# SH-2129 (SC2129)
echo foo >> file
date >> file
cat stuff  >> file

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
if [ "$(find . | grep 'IMG[0-9]')" ]
then
  echo "Images found"
fi

# SH-2144 (SC2144)
for f in /path/to/your/files*; do

    ## Check if the glob gets expanded to existing files.
    ## If not, f here will be exactly the pattern above
    ## and the exists test will evaluate to false.
    [ -e "$f" ] && echo "files do exist" || echo "files do not exist"

    ## This is all we needed to know, so we can break after the first iteration
    break
done

# SH-2145 (SC2145)
# 1
printf "Error: %s\n" "Bad parameters: $@"

# 2
printf "Error: %s\n" "Bad parameters: ${ARRAY_VAR[@]}"

# SH-2146 (SC2146)
find . -name '*.avi' -o -name '*.mkv' -exec cp {} /media \;

# SH-2147 (SC2147)
PATH="$PATH:~/bin"

# SH-2149 (SC2149)
$ a='1+1'
$ echo $(($a * 5))    # becomes 1+1*5
6
$ echo $((a * 5))     # evaluates as (1+1)*5
10

# SH-2150 (SC2150)
find . -type f -exec 'cat {} | wc -l' \;

# SH-2151 (SC2151)
myfunc() {
  return foo bar
}

# SH-2152 (SC2152)
message=$(myfunc)
echo "The function wrote: $message"

# SH-2153 (SC2153)
MY_VARIABLE="hello world"
echo "$MYVARIABLE"  # misspelled name

# SH-2154 (SC2154)
echo "$undefined_var"

# SH-2268 (SC2268)
[ "x$pass" = "xswordfish" ]
test x"$var" = x

# SH-2324 (SC2324)
var=2
n=3
var+=$n
echo $var  # prints "23", not 5

# SH-2327 (SC2327)
var=$(tr -d ':' < input.txt > output.txt)

# SH-2328 (SC2328)
var=$(tr -d ':' < input.txt > output.txt)

# SH-2331 (SC2331)
if [ -a ~/.bash_aliases ]
then
  source ~/.bash_aliases
fi

