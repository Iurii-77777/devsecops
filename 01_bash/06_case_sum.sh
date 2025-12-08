#!/bin/bash
if [ $# -ne 2 ]; then
    echo "Используйте аргументы: $0 <number1> <number2>"
    exit 1
fi

sum=$(( $1 + $2 ))
echo "Сумма аргументов: $sum"
