#!/bin/bash

input_dir="/home/ansibleadm/FN-QA"
output_dir="/home/ansibleadm/FN-QA/html-gen-files"

mkdir -p /home/ansibleadm/FN-QA/html-gen-files

for files in "$input_dir"/*.docx
do
        # echo $files
        find $output_dir/ -type f -cmin +1 -delete
        filename=$(basename -s .docx $files | sed 's/\_/-/g')
        pandoc --extract-media "$files" -t html -o "$output_dir/$filename".html

done
