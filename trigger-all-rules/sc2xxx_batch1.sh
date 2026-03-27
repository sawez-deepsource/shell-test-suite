#!/bin/bash

# SH-2001 (SC2001)
string="stirng" ; echo "$string" | sed -e "s/ir/ri/"

# SH-2002 (SC2002)
cat file | tr ' ' _ | nl
cat file | while IFS= read -r i; do echo "${i%?}"; done

# SH-2003 (SC2003)
i=$(expr 1 + 2)
l=$(expr length "$var")

# SH-2004 (SC2004)
$ a='1+1'
$ echo $(($a * 5))    # becomes 1+1*5
6
$ echo $((a * 5))     # evaluates as (1+1)*5
10

# SH-2005 (SC2005)
echo "$(cat 1.txt)"
echo `< /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c6`

# SH-2006 (SC2006)
echo "You are running on `uname`"

# SH-2007 (SC2007)
n=1
n=$[n+1]

# SH-2008 (SC2008)
find . | echo

# SH-2009 (SC2009)
for pid in $(pgrep '^python$')
do
  user=$(ps -o user= -p "$pid")
  echo "The process $pid is run by $user"
done

# SH-2010 (SC2010)
ls /directory | grep mystring

# or

rm $(ls | grep -v '\.c$')

# SH-2011 (SC2011)
ls | xargs -n1 wc -w

# SH-2012 (SC2012)
ls -l | grep " $USER " | grep '\.txt$'


NUMGZ="$(ls -l *.gz | wc -l)"

# SH-2013 (SC2013)
foo *
bar

# SH-2014 (SC2014)
find . -name '*.tar' -exec tar xf {} -C "$(dirname {})" \;

# SH-2015 (SC2015)
[[ $dryrun ]] && echo "Would delete file" || rm file

# SH-2016 (SC2016)
name=World
echo 'Hello $name'

# SH-2017 (SC2017)
percent=$((count/total*100))

# SH-2018 (SC2018)
PLATFORM="$(uname -s | tr 'A-Z' 'a-z')"

# SH-2019 (SC2019)
PLATFORM="$(uname -s | tr 'A-Z' 'a-z')"

# SH-2020 (SC2020)
echo 'hello world' | tr 'hello' 'goodbye'

# SH-2021 (SC2021)
tr -cd '[a-z]'

# SH-2024 (SC2024)
sudo echo 'export FOO=bar' >> /etc/profile

# SH-2025 (SC2025)
PS1='\e[36m\$ \e(B\e[m'

# SH-2026 (SC2026)
alias server_uptime='ssh $host 'uptime -p''

# SH-2027 (SC2027)
echo "You enter "$HOSTNAME". You can smell the wumpus." >> /etc/issue

# SH-2028 (SC2028)
echo "Name:\t$value"

# SH-2029 (SC2029)
ssh host "echo $HOSTNAME"

# SH-2030 (SC2030)
n=0
printf "%s\n" {1..10} | while read i; do (( n+=i )); done
echo $n

# SH-2031 (SC2031)
n=0
printf "%s\n" {1..10} | while read i; do (( n+=i )); done
echo $n

# SH-2032 (SC2032)
foo() { bar --baz "$@"; frob --baz "$@"; };
find . -exec foo {} +

# SH-2033 (SC2033)
foo() { bar --baz "$@"; frob --baz "$@"; };
find . -exec foo {} +

# SH-2034 (SC2034)
foo=42
echo "$FOO"

# SH-2035 (SC2035)
rm *

# SH-2036 (SC2036)
sum=find | wc -l

# SH-2037 (SC2037)
var=grep -c pattern file

# SH-2038 (SC2038)
find . -type f | xargs md5sum

# SH-2041 (SC2041)
for i in 'seq 1 10'
do
  echo "$i"
done

# SH-2043 (SC2043)
for var in value
do
  echo "$var"
done

# SH-2044 (SC2044)
for file in $(find mydir -mtime -7 -name '*.mp3')
do
  let count++
  echo "Playing file no. $count"
  play "$file"
done
echo "Played $count files"

# SH-2045 (SC2045)
touch 'filename with spaces.wav'
touch 'filename with * globs.wav'
touch 'More_Globs[2003].wav'
touch 'files_with_fønny_chæracters_in_certain_locales.wav'

# SH-2046 (SC2046)
ls -l $(getfilename)

# SH-2048 (SC2048)
cp $* ~/dir

# SH-2049 (SC2049)
[[ $file =~ *.txt ]]

# SH-2050 (SC2050)
if [[ "myvar" = "test" ]]             # always false because myvar is a literal string
if [[ "$myvar" = "test" ]]            # correctly compares a variable

if [ 'grep -c foo bar' -ge 10 ]       # always false because grep doesn't run
if [ "$(grep -c foo bar)" -ge 10 ]    # correctly checks grep output

# SH-2051 (SC2051)
from="a" to="m"
for c in $(eval "echo {$from..$to}"); do echo "$c"; done

# SH-2053 (SC2053)
[[ $a = $b ]]

