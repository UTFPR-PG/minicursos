#!/bin/sh

for file in ./imagens/slide/*.{jpg,png}; do
   convert "$file" $(echo "$file" | sed 's/\(\.jpg\|\.png\)$/\.eps/')
done
