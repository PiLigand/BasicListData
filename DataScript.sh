#!/bin/bash
currentPath=$(pwd)
folder=Depot
fileName=DataScript

depotPath=$currentPath/$folder

if [ -d $depotPath ]
then
	echo "File location $depotPath found"
else
	echo "Making file location $depotPath"
	mkdir $depotPath
fi

while true; do

	dateTime=$(date "+%Y%m%d_%H%M00")
	file=$depotPath/$fileName\_$dateTime.txt

	echo "Creating Variable Contents"

	let tag1=($RANDOM % 100 +  8000)
	let tag2=($RANDOM % 70 + 4000)
	let tag3=($RANDOM % 50)
	let tag4=($RANDOM % $(date "+%d") + $(date "+%m"))

	let tagA=($RANDOM % 2)
	let tagB=($tag3 % 2)
	let tagC=($(date "+%H") % 2)

	let tagP=($RANDOM % 6)
	if [ $tagP -eq 0 ]
	then
		let tagP=($tag3 % 3)
	else
		tagP=""
	fi
	let tagQ=($RANDOM % 8)
	if [ $tagQ -eq 0 ]
	then
		let tagQ=($tag3 % 4)
	else
		tagQ=""
	fi

	echo "Creating File $file"
	echo "TimeStamp;Tag;Value" > $file
	echo "========" >> $file
	echo "$dateTime;tag1;$tag1" >> $file
	echo "$dateTime;tag2;$tag2" >> $file
	echo "$dateTime;tag3;$tag3" >> $file
	echo "$dateTime;tag4;$tag4" >> $file
	echo "$dateTime;tag5;$tag5" >> $file
	echo "$dateTime;tagA;$tagA" >> $file
	echo "$dateTime;tagB;$tagB" >> $file
	echo "$dateTime;tagC;$tagC" >> $file
	echo "$dateTime;tagP;$tagP" >> $file
	echo "$dateTime;tagQ;$tagQ" >> $file

	echo "Next File in 60 Seconds"
	sleep 15
	echo "Next File in 45 Seconds"
	sleep 15
	echo "Next File in 30 Seconds"
	sleep 15
	echo "Next File in 15 Seconds"
	sleep 15

done
