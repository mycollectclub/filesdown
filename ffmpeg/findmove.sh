#!/bin/bash
find . -type f \( -name "*.mkv" -o -name "*.mp4" -o -name "*.mov" -o -name "*.flv" -o -name "*.wmv" -o -name "*.asf" -o -name "*.mpeg" -o -name "*.mpg" -o -name "*.wmv" -o -name "*.rm" -o -name "*.rmvb" -o -name "*.ts" -o -name "*.m2ts" -o -name "*.ISO" \) | while read files 
do
	ffprobe -v quiet -print_format json -show_format -show_streams "$files" > "${files##*/}.json"
done
	
