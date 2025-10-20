sum=0
echo "Введите числа построчно (для завершения введите число 0):"
while read number
do
if [ "$number" -eq 0 ]; then
break
fi
sum=$((sum + number))
done
echo "Сумма всех ввденных чисел равна: $sum"
