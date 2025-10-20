if [ -z "$1" ]; then
dir="."
else
dir="$1"
fi
if [ ! -d "$dir" ]; then
echo "Ошибка: каталог '$dir' не существует" >$2
exit 1
fi
find "$dir" -type f -print0 2>/dev/null | xargs -0 du -h 2>/dev/null | sort -hr
