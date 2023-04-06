#!/bin/bash
Imagename="fn-qa-docker-images"
Repository="projectfndev"
if [ -f /tmp/tagging.txt ]; then
	lasttag=$(cat /tmp/tagging.txt)
	newtag=$(echo "$lasttag + 0.1" | bc)
else
	newtag=1.1
fi
docker build -t $Repository/$Imagename:$newtag . 
docker push $Repository/$Imagename:$newtag
docker images | awk '( $1 == "projectfndev/fn-qa-docker-images")' | awk '{print $2}'| sort -n > /tmp/tagging.txt
echo $(tail -n 1 /tmp/tagging.txt) > /tmp/tagging.txt

