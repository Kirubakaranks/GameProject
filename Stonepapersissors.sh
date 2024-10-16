#!/bin/bash
arr[0]="stone"
arr[1]="paper"
arr[2]="sissor"

echo "Welcome to stone,paper,sissors!"

read -p "Do you want to the game [PLAY/NO]: " Option

while [ $Option == "PLAY" ]
do
   rand=$[ $RANDOM % 3 ]
   bot_option=${arr[$rand]}

   read -p "Choose your option[stone,paper,sissors]: " user_option
   
   if [ $user_option == "stone" ] && [ $bot_option == "paper" ]
   then
      echo "bot wins! it choose $bot_option"
   elif [ $user_option == "paper" ] && [ $bot_option == "sissor" ]
   then
      echo "bot wins! it choose $bot_option"
   elif [ $user_option == "sissor" ] && [ $bot_option == "stone" ]
   then
      echo "bot wins! it choose $bot_option"
    elif [ $bot_option == "stone" ] && [ $user_option == "paper" ]
   then
      echo "user wins! it choose $bot_option"
    elif [ $bot_option == "paper" ] && [ $user_option == "sissor" ]
   then
      echo "user wins! it choose $bot_option"
    elif [ $bot_option == "sissor" ] && [ $user_option == "stone" ]
   then
      echo "user wins! it choose $bot_option"
   else 
     echo "its a draw it choose $bot_option and you choose $user_option"
    fi
     read -p "Do you want to the game again: " Option
   
done