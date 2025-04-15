#!/bin/bash
set -e

DIR=/opt/210225-ptm/

echo "The script checks files inside the directory $DIR, 
and if there are 'sh' files among them, it will add execution rights to them"

# Переходим в  заданный каталог
cd $DIR

	# Запускаем цикл для итерации по списку файлов
	for FILE in *
	do

	# Проверяем, если файл  является скриптом, то добавляем права на запуск
		if [[ -f "$FILE" && "$FILE" == *.sh ]]; then
			chmod 744 "$FILE"
			echo " Найден скрипт - '$FILE'. Установлены права 744  "
		#else
			#echo "'$FILE' - не является скриптом"
		fi
	done
echo "Поиск выполнялся НЕ рекурсивно. 
Script done"
