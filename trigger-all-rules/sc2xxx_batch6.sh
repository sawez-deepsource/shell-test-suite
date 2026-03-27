#!/bin/bash

# SH-2068 (SC2068)
cp $@ ~/dir

# SH-2069 (SC2069)
firefox 2>&1 > /dev/null

# SH-2070 (SC2070)
var="hello"
if [ -n $var ]; then echo "has value"; fi

# SH-2071 (SC2071)
var=5
if [[ $var > 10 ]]; then echo "big"; fi

# SH-2072 (SC2072)
[[ 2 -lt 3.14 ]]

# SH-2073 (SC2073)
if [ "aardvark" < "zebra" ]; then echo "ok"; fi

# SH-2074 (SC2074)
input="DOC123.txt"
[ "$input" =~ DOC[0-9]*\.txt ] && echo "match"

# SH-2076 (SC2076)
foo="foobar"
[[ $foo =~ "^fo+ bar$" ]]

# SH-2077 (SC2077)
[[ 0=1 ]]

# SH-2079 (SC2079)
(( x = 1.5 + 2.3 ))

# SH-2080 (SC2080)
echo $(( 16 - 08 ))

# SH-2081 (SC2081)
var="abc123"
if [ $var == *[^0-9]* ]; then echo "not numeric"; fi

# SH-2082 (SC2082)
n=1
echo "${var_$n}"

# SH-2084 (SC2084)
i=4
$(( i++ ))

# SH-2087 (SC2087)
ssh host.example.com << EOF
  echo "Logged in on $HOSTNAME"
EOF

# SH-2088 (SC2088)
filename="report.txt"
rm "~/Desktop/$filename"

# SH-2089 (SC2089)
args='-lh "My File.txt"'
ls $args

# SH-2091 (SC2091)
if $(which epstopdf); then echo "Found"; fi

# SH-2092 (SC2092)
sayhello2092() { echo "hello world"; }
`sayhello2092`

# SH-2093 (SC2093)
echo "Starting compilation"
exec ./compile
echo "Starting deployment"
exec ./deploy

# SH-2094 (SC2094)
grep foo file.txt | sed -e 's/foo/bar/g' > file.txt

# SH-2095 (SC2095)
while read -r host; do
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
for dir in */; do
  cd "$dir"
  convert index.png index.jpg
  cd ..
done

# SH-2104 (SC2104)
foo2104() {
  if [[ -z $1 ]]; then
    break
  fi
  echo "Hello $1"
}

# SH-2105 (SC2105)
case "$1" in
    -v)
       verbose=1
       break
       ;;
    -d)
       debug=1
       ;;
esac

# SH-2106 (SC2106)
for i in a b c; do
  echo hi | grep -q bye | break
done

# SH-2107 (SC2107)
[ "$1" = "-v" && -z "$2" ]

# SH-2109 (SC2109)
[ "$1" = "-v" || "$1" = "-help" ]

