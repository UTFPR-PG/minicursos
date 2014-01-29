#!/bin/sh

for file in ./recursos/*.{jpg,png}; do
   convert "$file" $(echo "$file" | sed 's/\(\.jpg\|\.png\)$/\.eps/')
done
