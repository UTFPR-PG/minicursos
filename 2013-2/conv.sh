#!/bin/sh

for file in ./*.jpg; do
    convert "$file" $(echo "$file" | sed 's/\.jpg$/\.eps/')
done
