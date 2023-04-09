#!/bin/bash/
cat agenda.txt | awk ' BEGIN {printf "Day  Agenda \n"} {
    if ($0 == "Today" || $0 == "Tomorrow") {
        printf $0 " "
        getline;
        printf $0 "\n"

    }
}'