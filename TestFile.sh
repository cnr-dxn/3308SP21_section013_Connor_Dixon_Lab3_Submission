#!/bin/bash
# Author: Connor Dixon
# Date: 2/4/2021

countLines()
{
	numOfLines=$(grep -c ^ $1)
	echo "Number of lines in file \"$1\" is: $numOfLines"
}

countWords()
{
	echo "********************************************************************************************************************"
	numOfWord=$(grep -o 'Lorem' $1 | wc -l)
	echo "Number of instances of \"Lorem\" in file \"$1\" is $numOfWord: "
	grep Lorem $1
	echo "********************************************************************************************************************"
	numOfWord=$(grep -o 'model' $1 | wc -l)
	echo "Number of instances of \"model\" in file \"$1\" is $numOfWord: "
	grep model $1
	echo "********************************************************************************************************************"
	numOfWord=$(grep -o 'Ipsum' $1 | wc -l)
	echo "Number of instances of \"Ipsum\" in file \"$1\" is $numOfWord: "
	grep Ipsum $1
	echo "********************************************************************************************************************"
	numOfWord=$(grep -o 'will' $1 | wc -l)
	echo "Number of instances of \"will\" in file \"$1\" is $numOfWord: "
	grep will $1
	echo "********************************************************************************************************************"
}

addText()
{
	echo "Please enter the sentence to be appented onto $1:"
	read sentenceToBeAdded
	echo $sentenceToBeAdded >> $1
}

copyAndExit()
{
	mkdir solution
	cp $1 solution/.
}




while :
do
	echo
	echo "================= MENU ================= "
	echo "Please enter an option: "
	echo "1) Count the number of lines of the input file"
	echo "2) Count the number of words of the input file"
	echo "3) Add a sentence to the end of the provided text file"
	echo "4) Make a new directory and copy the provided text file to said directory and exit"
	read choice
	case $choice in
		1)
			countLines sample_text.txt
			;;
		2)
			# some shit
			countWords sample_text.txt
			;;
		3)
			# some shit
			addText sample_text.txt
			;;
		4)
			# some shit
			copyAndExit sample_text.txt
			break
			;;
		*)
			# some shit
			echo "Please enter a valid choice"
			;;
	esac
done
