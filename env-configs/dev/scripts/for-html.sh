#!/bin/bash

input_dir="/home/ansibleadm/FN-Dev"
output_dir="/home/ansibleadm/FN-Dev/html-gen-files"

for files in "$input_dir"/*.docx
do
        # echo $files
        find $output_dir/ -type f -cmin +1 -delete
        filename=$(basename -s .docx $files | sed 's/\_/ /g')
        pandoc "$files" -t html -o "$output_dir/$filename".html
done
