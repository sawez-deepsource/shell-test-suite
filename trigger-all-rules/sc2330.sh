#!/bin/busybox sh
# SH-2330 (SC2330)
if [[ $1 == https:* ]]
then
  echo "Using URL $1"
fi
