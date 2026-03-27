#!/bin/bash
# SH-1136 (SC1136) -- retired in shellcheck 0.7.2
if [ -e "foo.txt" ]: then
  echo "Exists"
fi
