#!/bin/bash

# simple-interest.sh

# Этот скрипт рассчитывает простой процентный доход (I = P * T * R / 100).

P=$1
T=$2
R=$3

# Проверка, что предоставлены все 3 аргумента
if [ -z "$P" ] || [ -z "$T" ] || [ -z "$R" ]; then
    echo "Usage: $0 <Principal> <Time_in_years> <Rate>"
    exit 1
fi

# Использование 'bc' (калькулятор с плавающей точкой) для точных расчетов
# В Bash по умолчанию нет поддержки чисел с плавающей точкой.
INTEREST=$(echo "scale=2; ($P * $T * $R) / 100" | bc)

echo "Principal: $P"
echo "Time (years): $T"
echo "Rate (%): $R"
echo "---"
echo "Simple Interest (I): $INTEREST"
