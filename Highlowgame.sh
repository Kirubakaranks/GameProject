#!/bin/bash

echo "Welcome to the High Low game"
read -p "Do you want to play the game[Yes/No]: " Option
while [ 1 == 1 ]
do
    rand=$[ $RANDOM % 5  +1 ]
    if [ $Option == yes ]
    then
        while [ 1 == 1 ]
        do
            read -p "Guess the number between 1 to 5: " number
            if [[ $number < $rand ]]
            then
                echo "Your guessing is low"
            elif [[ $number > $rand ]]
            then
                echo "Your guessing is high"
            else
                echo "You Guessed Correctly!"
                break
            fi
        done

    else
        echo "Thanks for vising"
        break
    fi
    read -p "Do you play again[yes/No]: " Option
    continue
done
   