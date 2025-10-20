target=$(( RANDOM % 100 + 1 ))
echo "Угадайте число от 1 до 100"
while true; do
read -p "Введите число: " guess
if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
echo "Введите целое число"
continue
fi
if [ "$guess" -lt "$target" ]; then
echo "Больше"
elif [ "$guess" -gt "$target" ]; then
echo "Меньше"
else
echo "Вы угадали число $target!"
break
fi
done
