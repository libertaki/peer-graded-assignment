#!/usr/bin/env bash
# File: guessinggame.sh

function uinput {
        echo "Input was $input."
}

echo "Type how many files you think are in the current directory and the press Enter:"

read input

files_in_cd=$(ls -1 | wc -l)

number='^[0-9]+$'

correct=false

while [[ "$correct" == "false" ]]
do
	if [[ $input -eq $files_in_cd ]]
	then
		uinput
		echo "You guessed correctly! Congratulations!!!"
		correct=true
        elif [[ $input =~ $number ]]
        then
                if [[ $input -lt $files_in_cd ]]
		then
			uinput
			echo "This number is too low. Please try again!"
			read input
		elif [[ $input -gt $files_in_cd ]]
		then
			uinput
			echo "This number is too high. Please try again!"
			read input
		fi
	else
		uinput
		echo "This is not a number. Please try again!"
                read input
	fi
done
