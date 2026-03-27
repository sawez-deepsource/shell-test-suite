#!/bin/bash
# SH-1075 (SC1075)
if [ "$#" -eq 0 ]
then
  echo "Usage: ..."
else if [ "$#" -lt 2 ]
then
  echo "Missing operand"
fi
