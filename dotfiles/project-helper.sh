#!/bin/bash

sos_files_path="/home/felipemarciano/sos"
current_directory=$(basename "$PWD")
current_sos_file="${sos_files_path}/${current_directory}.txt"

echo $current_sos_file

if [ -f "$current_sos_file" ]; then
    cat $current_sos_file
else 
    echo "Arquivo de instruções ${current_directory}.txt não existe dentro da pasta ${sos_files_path}."
fi

