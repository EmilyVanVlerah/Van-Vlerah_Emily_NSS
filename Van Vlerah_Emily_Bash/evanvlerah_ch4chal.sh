#!/bin/bash
rand=$RANDOM
secret=${rand:0:1}

function game {
	read -p "Guess a random one-digit number! " guess
        while [[ $guess != $secret ]]; do
                read -p "Try again! " guess
        done
	echo "Good job, $secret is it!"
}

function generate {
        echo "A random number is: $rand"
	echo -e "Hint: type \033[34;1m$0 game\033[0m for fun!"
}

if [[ $1 =~ game|Game|GAME ]]; then
	game
else
	generate
fi
