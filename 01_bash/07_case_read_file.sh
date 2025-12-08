#!/bin/bash
if [ $# -eq 0 ]; then
    echo "Введите путь к файлу в качестве аргумента."
    exit 1
fi

namefile=$1

if [ ! -f "$namefile" ]; then
    echo "Файл $namefile не существует"
    exit 1
fi

while IFS= read -r line; do
    echo "$line"
done < "$namefile"
