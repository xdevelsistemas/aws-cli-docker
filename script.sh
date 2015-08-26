#!/usr/bin/env bash

IN="$@"

arr=$(echo $IN | tr "&&" "\n")

# for x in $arr
# do
#     exec $x
# done
IFS='&&' read -ra ADDR <<< "$IN"
for i in "${ADDR[@]}"; do
    # process "$i"
    exec $i
done
