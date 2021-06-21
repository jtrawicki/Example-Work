#!/bin/bash

#This script finds the dealer who was working Roulette based on date and time.  It accepts two positional arguments,
#the schedule date file and a time parameter.  It prints output to the screen and not to a file.
#The 'sed' command below  eliminates the space between the time and the AM/PM in the schedule file, so the time
#arguement must be entered wholly and without the space, e.g. 08:00:00AM


cat $1 | sed 's/\00[[:space:]]/00/g' | grep $2 | awk -F" " '{print $1, $4, $5}'



 
