#!/bin/bash
#
#Arguments are entered as a four digit date like 0310
#and '02:00:00 AM' for the time.
#
grep "$2" $1_Dealer_schedule |awk '{print $1,$2,$5,$6}' 
