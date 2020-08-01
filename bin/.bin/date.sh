#!/bin/bash

h=$(date +"%l")
m=$(date +"%M")
d=$(date +"%a")
mm=$((60-m))
fg1="#885152"

hours=(zero One Two Three Four Five Six Seven Eight Nine Ten Eleven Twelve)
mins=(zero One Two Three Four Five Six Seven Eight Nine Ten Eleven Twelve Thirteen Fourteen Fifteen Sixteen Seventeen Eighteen Nineteen Twenty Twentyone Twentytwo Twentythree Twentyfour Twentyfive Twentysix Twentyseven Twentyeight Twentynine Thirty Thirtyone Thirtytwo Thirtythree Thirtyfour Thirtyfive Thirtysix Thirtyseven Thirtyeight Thirtynine Fourty Fourtyone Fourtytwo Fourtythree Fourtyfive Fourtysix Fourtyseven Fourtyeight Fourtynine Fifty Fiftyone Fiftytwo Fiftythree Fiftyfour Fiftyfive Fiftysix Fiftyseven Fiftyeight Fiftynine Sixty)


if [ "$m" -eq 15 ]
	then
		echo  %{F$fg1}"$d"%{F-} %{F$fg1}"Quarter Past"%{F-} "${hours[$h]}"
elif [ "$m" -gt 0 ] && [ "$m" -lt 30 ]
	then
		echo  %{F$fg1}"$d"%{F-} "${mins[$m]}" %{F$fg1}"Past"%{F-}  "${hours[$h]}"
elif [ "$m" -eq 30 ]
	then
        echo  %{F$fg1}"$d"%{F-} %{F$fg1}"Half Past"%{F-} "${hours[$h]}"
elif [ "$m" -eq 45 ]
	then
		echo  %{F$fg1}"$d"%{F-} %{F$fg1}"Quarter Til"%{F-} "${hours[$h+1]}"
elif [ "$m" -gt 30 ] && [ "$m" -lt 60 ]
	then
		echo  %{F$fg1}"$d"%{F-} "${mins[$mm]}" %{F$fg1}"Mins Til"%{F-} "${hours[$h+1]}"
fi
