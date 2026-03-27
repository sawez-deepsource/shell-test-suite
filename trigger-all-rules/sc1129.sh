#!/bin/bash
# SH-1129 (SC1129)
while! [ -f file ]
do sleep 1; done
