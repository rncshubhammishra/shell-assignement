#!/bin/bash

echo $1 | awk '{
for (i = 1; i <= NF; i++) {
    for (j = length($i); j > 0; j--) {
        str = str substr($i, j, 1);
    }
    printf str " "
    str = ""
}
}
END {
    printf "\n"
}'
