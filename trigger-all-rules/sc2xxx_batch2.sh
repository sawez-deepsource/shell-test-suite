#!/bin/bash

# SH-2054 (SC2054)
flags=("-l", "-d", "--sort=size")
ls "${flags[@]}"

# SH-2057 (SC2057)
[ "$var" -leq 42 ]

# SH-2058 (SC2058)
[ -E 42 ]

# SH-2059 (SC2059)
printf "Hello, $NAME\n"

# SH-2060 (SC2060)
tr -cd [:digit:]

# SH-2061 (SC2061)
find . -name *.txt

# SH-2062 (SC2062)
grep foo* file

# SH-2063 (SC2063)
grep '*foo*'

# SH-2064 (SC2064)
trap "echo \"Finished on $(date)\"" EXIT

# SH-2065 (SC2065)
[ 1 >2 ] || [ 3>'aaa bb' ]

# SH-2066 (SC2066)
for s in "$(mycommand)"; do echo "$s"; done

# SH-2067 (SC2067)
find . -type f -exec shellcheck {} | wc -l \;
find . -exec echo {} ;

# SH-2068 (SC2068)
cp $@ ~/dir

# SH-2069 (SC2069)
firefox 2>&1 > /dev/null

# SH-2070 (SC2070)
if [ -n $var ]
then
  echo "var has a value"
else
  echo "var is empty"
fi

# SH-2071 (SC2071)
if [[ $var > 10 ]]
then
  echo "Incorrectly triggers when var=5"
fi

# SH-2072 (SC2072)
[[ 2 -lt 3.14 ]]

# SH-2073 (SC2073)
if [ "aardvark" < "zebra" ]
then
  echo "Alphabetical!"
fi

# SH-2074 (SC2074)
[ "$input" =~ DOC[0-9]*\.txt ] && echo "match"

# SH-2076 (SC2076)
[[ $foo =~ "^fo+ bar$" ]]

# SH-2077 (SC2077)
[[ 0=1 ]]

# SH-2078 (SC2078)
if [[ STY ]             # always true
if [[ $STY ]]           # checks variable $STY

if [[ 'grep foo bar' ]] # always true
if [[ `grep foo bar` ]] # checks grep output (poorly)
if grep -q foo bar      # checks for grep match (preferred)

# SH-2079 (SC2079)
if (( 1.5 > 1 )); then
  echo "yes"
fi

# SH-2080 (SC2080)
echo $((10#08))

# SH-2081 (SC2081)
if [ $var == *[^0-9]* ]
then
  echo "$var is not numeric"
fi

# SH-2082 (SC2082)
n=1
echo ${var_$n}

# SH-2084 (SC2084)
i=4
$(( i++ ))

# SH-2086 (SC2086)
echo $1
for i in $*; do :; done # this one and the next one also apply to expanding arrays.
for i in $@; do :; done

# SH-2087 (SC2087)
ssh host.example.com << EOF
  echo "Logged in on $HOSTNAME"
EOF

# SH-2088 (SC2088)
rm "~/Desktop/$filename"

# SH-2089 (SC2089)
args='-lh "My File.txt"'
ls $args

# SH-2091 (SC2091)
if $(which epstopdf)
then
  echo "Found epstopdf"
fi

# SH-2092 (SC2092)
sayhello() { echo "hello world"; }

# SH-2093 (SC2093)
echo "Starting compilation"
exec ./compile
echo "Starting deployment"
exec ./deploy

# SH-2094 (SC2094)
grep foo file.txt | sed -e 's/foo/bar/g' > file.txt

# SH-2095 (SC2095)
while read -r host
do
  ssh "$host" "uptime"
done < hosts.txt

# SH-2097 (SC2097)
name=World cmd -m "Hello $name"

# SH-2099 (SC2099)
i=3
i=i + 2

# SH-2100 (SC2100)
i=3
i=i+2

# SH-2101 (SC2101)
gzip file[:digit:]*.txt

# SH-2102 (SC2102)
echo [100-999].txt

# SH-2103 (SC2103)
for dir in */
do
  cd "$dir"
  convert index.png index.jpg
  cd ..
done

# SH-2104 (SC2104)
foo() {
  if [[ -z $1 ]]
  then
    break
  fi
  echo "Hello $1"
}

