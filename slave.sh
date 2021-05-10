#!/bin/bash
if [ -d " Master/*" ] ; 
then
#	echo "Testing"
	mkdir $(seq --format '%.0f' 1 10)
else	
	echo "Files are already exists"
fi
for d in *; do
	if [ "$(expr $(echo 0$d | tr -cd 0-9) % 2)" -eq 0 ]; then
	echo "$d"
	touch $d/package.json
	fi
done
for d in /home/siva/Desktop/Master/* 
do
	cd $d
	if [ -f "package.json" ] ; then
		echo "$d"
	fi
	cd ../..
done

	
