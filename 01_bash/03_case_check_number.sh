#!/bin/bash
echo "Введите число:"
read number

if [ $number -gt 0 ]; then
    echo "Положительное значение"
elif [ $number -lt 0 ]; then
    echo "Отрицательное значение"
else
    echo "Ноль"
fi
