#! /bin/bash -x

option="y"
counter1=0
counter2=0
counter3=0
counter4=0
counter5=0
counter6=0

while [[ $counter1 -lt 10 && $counter2 -lt 10 && $counter3 -lt 10 && $counter4 -lt 10 && $counter5 -lt 10 && $counter6 -lt 10 ]]
do
        dieNo=$((RANDOM%6+1))
	((counter++))
        if [[ $dieNo -eq 1 ]]
	then
		((counter1++))
	elif [[ $dieNo -eq 2 ]]
	then
		((counter2++))
	elif [[ $dieNo -eq 3 ]]
        then
                ((counter3++))
	elif [[ $dieNo -eq 4 ]]
        then
                ((counter4++))
	elif [[ $dieNo -eq 5 ]]
        then
                ((counter5++))
	else
		((counter6++))
	fi

        #if [-v dicevalues[$dieNo] ];
	#then
	#	diceValues[$dieNo]=$counter
	#else
	#	diceValues[$dieNo]=$counter
	diceValues["$counter"]=$dieNo
        #read -p "enter 'y' to continue", option
done

echo ${diceValues[@]}
