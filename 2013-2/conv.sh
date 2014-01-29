#!/bin/sh

for file in ./resources/*.{jpg,png}; do
   convert "$file" $(echo "$file" | sed 's/\(\.jpg\|\.png\)$/\.eps/')
done
