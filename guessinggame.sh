#!/usr/bin/env bash
function guessinggame {
	echo "Welcome to the guessing game"
	ans=$(ls -a | wc -l)
	echo -n "How many files are in the current directory (including hidden files)? "; read guess
	while [[ -z "$guess" ]] || [[ "$guess" =~ $(echo "$guess" | grep -E "\D") ]]
	do
		echo -n "Invalid or no input, please enter a number: "; read guess
	done
	while [[ "$guess" -ne "$ans" ]]
	do
		if [[ "$guess" -lt "$ans" ]]
		then
			echo "Too low"
		elif [[ "$guess" -gt "$ans" ]]
		then
			echo "Too high"
		fi
		echo -n "Try again: "; read guess
		while [[ -z "$guess" ]] || [[ "$guess" =~ $(echo "$guess" | grep -E "\D") ]]
		do
			echo -n "Invalid or no input, please enter a number: "; read guess
		done
	done
	echo "That's the right answer, congratulations!"
}

guessinggame
