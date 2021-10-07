#!/bin/bash

candidates=('Hello' 'Hi')

amtVotes=$(($RANDOM % 9 + 1))

votes=()

for i in $(seq 0 $amtVotes); do
    voteIndex=$(($RANDOM % ${#candidates[@]}))
    votes+=(${candidates[voteIndex]})
done

function join {
    for i in "$@"; do
        echo "$i"
    done
}

./a.out ${candidates[@]} <<EOF
$amtVotes
$(join ${votes[@]})
EOF
