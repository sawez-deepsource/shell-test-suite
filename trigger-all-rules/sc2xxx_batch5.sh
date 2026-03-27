#!/bin/bash

# SH-2045 (SC2045): Use glob instead of ls in for loop
for f in $(ls *.conf)
do
  echo "Config: $f"
done

# SH-2046 (SC2046): Quote command expansion to prevent word splitting
getfile() { echo "/tmp/my file.txt"; }
ls -l $(getfile)

# SH-2048 (SC2048): Use "$@" to prevent whitespace problems
wrapper() {
  cp $* /backup/
}

# SH-2049 (SC2049): =~ used with a glob pattern
filename="report.txt"
[[ $filename =~ *.txt ]]

# SH-2050 (SC2050): Comparison with literal strings only
if [ myvar = "hello" ]
then
  echo "match"
fi

# SH-2051 (SC2051): Bash doesn't allow variables in brace ranges
limit=10
for i in {1..$limit}
do
  echo "$i"
done

# SH-2053 (SC2053): Quote RHS of == in [[ ]] to prevent globbing
a="[test]"
b="[test]"
[[ $a = $b ]]

# SH-2054 (SC2054): Use spaces not commas to separate array elements
options=("--verbose", "--debug", "--dry-run")
echo "${options[@]}"

# SH-2057 (SC2057): Unknown binary operator
score=85
[ "$score" -leq 100 ]

# SH-2058 (SC2058): Unknown unary operator
[ -E /tmp/testfile ]

# SH-2059 (SC2059): Variable in printf format string
username="admin"
printf "Hello, $username\n"

# SH-2060 (SC2060): Quote tr character classes
echo "abc123" | tr -cd [:alpha:]

# SH-2061 (SC2061): Quote find -name pattern
find /var -name *.log

# SH-2062 (SC2062): Quote grep pattern to prevent glob expansion
grep foo* /var/log/syslog

# SH-2063 (SC2063): Glob used as grep pattern
grep '*error*' /var/log/syslog

# SH-2064 (SC2064): Trap code expands at definition time
tmpfile="/tmp/cleanup_$$"
trap "rm -f $tmpfile" EXIT

# SH-2065 (SC2065): > interpreted as redirection not comparison
test 3 >file

# SH-2066 (SC2066): Loop runs once due to double-quoted expansion
mylist() { echo "one two three"; }
for word in "$(mylist)"; do echo "$word"; done

# SH-2067 (SC2067): Missing ; or + terminating -exec
find /tmp -type f -exec cat {} | head -1 \;
