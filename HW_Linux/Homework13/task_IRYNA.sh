#!/bin/bash

DATE=$(date +%d.%m.%y)
PATH="/opt/210225-ptm/platonova"

for i in {1..10}
do
	FILENAME="${i}_${DATE}.txt"
	#touch  или:
	echo "" > "$PATH/$FILENAME"
	echo "Создан файл: $FILENAME"
done

echo "done!"
