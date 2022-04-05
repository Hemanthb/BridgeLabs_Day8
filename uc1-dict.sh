#! /bin/bash -x

option="y"
counter=0
while [[ $option == "y" ]]
do
	dieNo=$((RANDOM%6+1))
	((counter++))
	diceValues["$counter"]=$dieNo
	read -p "enter 'y' to continue", option
done

echo ${!diceValues[@]}
