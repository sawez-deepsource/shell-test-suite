#!/bin/bash

# SH-2001 (SC2001): Use ${variable//search/replace} instead of sed
mystr="stirng"
echo "$mystr" | sed -e "s/ir/ri/"

# SH-2003 (SC2003): Outdated expr statement
val1=$(expr 1 + 2)
val2=$(expr length "$mystr")

# SH-2004 (SC2004): Unnecessary $ in arithmetic
n=5
m=3
echo $(($n + $m))

# SH-2006 (SC2006): Legacy backtick instead of $(...)
echo "Running on `uname`"

# SH-2007 (SC2007): Deprecated $[..] syntax
counter=1
counter=$[counter+1]

# SH-2008 (SC2008): echo doesn't read from stdin
ls /tmp | echo

# SH-2009 (SC2009): Use pgrep instead of grepping ps output
service="myapp"
ps ax | grep -v grep | grep "$service" > /dev/null

# SH-2010 (SC2010): Avoid ls | grep
ls /var/log | grep error

# SH-2011 (SC2011): Use find instead of ls | xargs
ls | xargs -n1 file

# SH-2012 (SC2012): Use find instead of parsing ls -l
numfiles="$(ls -l *.log 2>/dev/null | wc -l)"

# SH-2013 (SC2013): Use while read to read lines
for line in $(cat /etc/hosts)
do
  echo "Entry: $line"
done

# SH-2014 (SC2014): Command substitution runs before find
find /tmp -name '*.bak' -exec rm {} -C "$(dirname {})" \;

# SH-2015 (SC2015): A && B || C is not if-then-else
dryrun=true
[[ $dryrun ]] && echo "Dry run mode" || rm /tmp/testfile

# SH-2016 (SC2016): Use double quotes to expand variables
user="admin"
echo 'Current user is $user'

# SH-2017 (SC2017): Increase precision by replacing a/b*c with a*c/b
total=200
count=3
pct=$((count / total * 100))

# SH-2018 (SC2018): Use [:lower:] instead of a-z
platform="$(echo "HELLO" | tr 'A-Z' 'a-z')"

# SH-2019 (SC2019): Use [:upper:] instead of A-Z
upper_val="$(echo "hello" | tr 'a-z' 'A-Z')"

# SH-2020 (SC2020): tr replaces characters not words
echo "hello world" | tr 'hello' 'goodbye'

# SH-2021 (SC2021): Don't use [] around ranges in tr
cleaned=$(echo "abc123" | tr -cd '[a-z]')

# SH-2024 (SC2024): sudo doesn't affect redirects
sudo echo "newline" >> /etc/config

# SH-2025 (SC2025): Enclose escape sequences in \[..\]
PS1='\e[32m\u@\h\e[0m:\w\$ '

# SH-2026 (SC2026): Found word outside quotes
alias myalias='echo hello 'world''

# SH-2027 (SC2027): Unescaped enclosed quotes
echo "Welcome to "$HOSTNAME" server" >> /tmp/motd

# SH-2028 (SC2028): echo won't expand escape sequences
value="test"
echo "Result:\t$value"

# SH-2029 (SC2029): Unescaped argument in ssh command
ssh remotehost "echo $HOSTNAME"

# SH-2030 (SC2030): Variable modified locally due to pipe
sum=0
printf "%s\n" 1 2 3 4 5 | while read num; do (( sum += num )); done
echo "$sum"

# SH-2031 (SC2031): Variable modified in subshell
total_lines=0
cat /etc/hosts | while read line; do (( total_lines++ )); done
echo "$total_lines"

# SH-2032 (SC2032): Shell function passed to su
myclean() { echo "cleaning $1"; }
su -c myclean

# SH-2033 (SC2033): Shell function passed to external command
myprocess() { echo "processing $1"; rm -f "$1"; }
find /tmp -name '*.tmp' -exec myprocess {} \;

# SH-2036 (SC2036): Use $() for command substitution with pipeline
filecount=find | wc -l

# SH-2037 (SC2037): Missing command substitution
linecount=wc -l /etc/hosts

# SH-2038 (SC2038): Use -print0/-0 with find | xargs
find /tmp -type f | xargs rm -f

# SH-2041 (SC2041): Use $() not quotes for command substitution
for idx in 'seq 1 5'
do
  echo "Index: $idx"
done

# SH-2043 (SC2043): Iterating over a single constant value
for item in mydir
do
  echo "Processing $item"
done

# SH-2044 (SC2044): for loop on find output
for f in $(find /tmp -name '*.log')
do
  echo "Found: $f"
done
