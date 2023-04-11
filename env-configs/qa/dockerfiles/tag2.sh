#!/bin/bash
Imagename="fn-qa-docker-images"
Repository="projectfndev"
if [ -f /tmp/tagging.txt ]; then
	lasttag=$(cat /tmp/tagging.txt)
	newtag=$(echo "$lasttag + 0.1" | bc)
        export newtag
else
	newtag=1.1
	export newtag
fi
docker build -t $Repository/$Imagename:$newtag . 
#docker push $Repository/$Imagename:$newtag
docker images | awk '( $1 == "projectfndev/fn-qa-docker-images")' | awk '{print $2}'| sort -n > /tmp/tagging.txt
echo $(tail -n 1 /tmp/tagging.txt) > /tmp/tagging.txt
#docker run -dt -p :80 $Repository/$Imagename:$newtag
echo $(docker ps)
