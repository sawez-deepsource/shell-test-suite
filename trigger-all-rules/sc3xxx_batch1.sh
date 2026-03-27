#!/bin/sh

# SH-3012 (SC3012)
x="aardvark"
y="zebra"
if [ $x \< $y ]
then
  echo "$x comes before $y in the dictionary"
fi

# SH-3014 (SC3014)
if [ "$1" == "-n" ]
then
  dry_run=1
fi

# SH-3015 (SC3015)
if [ "$var" =~ foo[0-9]+ ]; then
  echo matched
fi

# SH-3016 (SC3016)
if [ -v STY ]
then
  echo "STY is set, you are using screen"
fi

# SH-3017 (SC3017)
if [ -a file.txt ]
then
  echo "file.txt exists"
fi

# SH-3062 (SC3062)
if [ -o braceexpand ]
then
  echo "Brace expansion available and enabled."
fi

