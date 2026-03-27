#!/bin/bash
# SH-1038 (SC1038)
while IFS= read -r line
do
  printf "%q\n" "$line"
done <<(curl -s http://example.com)
