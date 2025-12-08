#!/bin/bash
mkdir -p test
cd test

# Создаем файлы
touch file1 file2 file3

echo "Файлы созданы:"
ls

# Удаляем файлы
rm file1 file2 file3

echo "Файлы удалены"

# Выходим из директории
cd ..
