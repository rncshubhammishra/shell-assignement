#!/bin/bash

cat dummytext.txt | tr -d ., | tr ' ' '\n' | sort | uniq -c | sort -r | awk '{print $2 " " $1}'
