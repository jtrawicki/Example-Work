#!/bin/bash

#This script accepts two arguements to return the names of the dealers working all three games at a specified date 
#and time.
#The first arguement will be the name of the date schedule file you wish to analyze.
#The 'sed' command below eliminates the space between the time and the AM/PM modifier, so the time arguement must
#be entered wholly run together, e.g. 08:00:00AM.
#The output will be to the screen and will show the name of each game followed by the name of the dealer who was
#working that hour.



cat $1 | sed 's/\00[[:space:]]/00/g' | grep $2 | awk -F" " '{print "Black Jack Dealer:", $2, $3, "Roulette Dealer:", $4, $5, "Texas Hold Em Dealer:", $6, $7}'



 
