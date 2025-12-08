#!/bin/bash
if [ $# -ne 3 ]; then
    echo "Используйте аргументы: $0 <filename> <old_word> <new_word>"
    exit 1
fi

filename=$1
old_word=$2
new_word=$3

if [ ! -f "$filename" ]; then
    echo "Файл $filename не существует"
    exit 1
fi

# Выполняем замену
sed -i "s/$old_word/$new_word/g" "$filename"
