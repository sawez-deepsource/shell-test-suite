#!/bin/sh
# SH-2326 (SC2326)
cat file | ! tee /dev/full
