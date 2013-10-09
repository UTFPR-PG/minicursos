#!/bin/sh

for file in ./*.{jpg,png}; do
   convert "$file" $(echo "$file" | sed 's/\(\.jpg\|\.png\)$/\.eps/')
done
