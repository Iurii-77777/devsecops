#!/bin/bash
if [ $# -eq 0 ]; then
    echo 'Введите значение $1 при запуске скрипта'
    exit 1
fi

for (( i=$1; i>=0; i-- )); do
    echo $i
done
