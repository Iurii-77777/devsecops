#!/bin/bash
# Функции для математических операций
add() {
    result=$(echo "scale=2; $1 + $2" | bc)
    echo "$1 + $2 = $result"
}

subtract() {
    result=$(echo "scale=2; $1 - $2" | bc)
    echo "$1 - $2 = $result"
}

multiply() {
    result=$(echo "scale=2; $1 * $2" | bc)
    echo "$1 * $2 = $result"
}

divide() {
    if [ $(echo "$2 == 0" | bc) -eq 1 ]; then
        echo "Ошибка, на ноль делить нельзя"
    else
        result=$(echo "scale=2; $1 / $2" | bc)
        echo "$1 / $2 = $result"
    fi
}

# Основная часть скрипта
echo "Введите первое число:"
read num1

echo "Введите второе число:"
read num2

echo "Выбирете операцию (+, -, *, /):"
read operation

case $operation in
    "+") add $num1 $num2 ;;
    "-") subtract $num1 $num2 ;;
    "*") multiply $num1 $num2 ;;
    "/") divide $num1 $num2 ;;
    *) echo "Неккоректная операция" ;;
esac
