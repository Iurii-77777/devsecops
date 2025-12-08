#!/bin/bash
if [ $# -ne 2 ]; then
    echo "Используйте аргументы: $0 <source_directory> <target_directory>"
    exit 1
fi

source_dir=$1
target_dir=$2
date_now=$(date +%Y%m%d)

if [ ! -d "$source_dir" ]; then
    echo "Исходная директория не существует"
    exit 1
fi

mkdir -p "$target_dir"

for file in "$source_dir"/*; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        cp "$file" "$target_dir/${filename%.*}_${date_now}.${filename##*.}"
    fi
done

echo "Резервное копирование выполнено в $target_dir"
