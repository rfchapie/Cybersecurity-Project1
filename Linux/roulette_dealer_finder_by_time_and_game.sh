#!/bin/bash
#$1 is the time as in '02:00:00 AM'
#$2 is the date as in 0310
#$3 is the game Enter Black for BlackJack, Roulette and Texas for Texas Hold Em
if [ $3 = Black ]; 
then
grep "$1" $2_Dealer_schedule |awk '{print $1,$2,$3,$4}'
elif [ $3 =  Roulette ]; 
then
grep "$1" $2_Dealer_schedule |awk '{print $1,$2,$5,$6}'
elif [ $3 = Texas ];
then
grep "$1" $2_Dealer_schedule |awk '{print $1,$2,$7,$8}'
else
echo " "
echo "Invalid Game Entered.  Valid names are Black, Roulette and Texas."
echo " "
fi
 

