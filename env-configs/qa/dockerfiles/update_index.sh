#!/bin/sh
rm -f index.html
for file_name in *.html; do
 if [ "$file_name" != "index.html" ]
then
 new_file_name=$(basename -s .html "$file_name")
 echo "<h2><a href=\"$file_name\" target=\"_blank\">"$new_file_name"</a></h2>" >> index.html
fi
done
