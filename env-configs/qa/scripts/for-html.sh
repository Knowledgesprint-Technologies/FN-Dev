#!/bin/bash

input_dir="/home/ansibleadm/FN-Dev"
output_dir="/home/ansibleadm/FN-Dev/tmp"

mkdir -p /home/ansibleadm/FN-Dev/tmp

for files in "$input_dir"/*.docx
do
        # echo $files
        find $output_dir/ -type f -cmin +1 -delete
        filename=$(basename -s .docx $files | sed 's/\_/-/g')
        pandoc --extract-media="$output_dir/$filename" "$files" -t html -o "$output_dir/$filename".html --shift-heading-level-by=2
        sed -i 's|'"$output_dir"'/\(.*\)|./\1|g' "$output_dir/$filename.html"
done
