#!/bin/bash
docker build -t projectfndev/fn-qa-docker-images:$(docker images | awk '($1 == "projectfndev/fn-qa-docker-images")' | awk 'END {print $2 += .1; exit}') . >> /tmp/taging.txt

last_word=$(tail -n 1 /tmp/taging.txt | awk '{print $NF}')

echo "$last_word"
docker push $last_word
