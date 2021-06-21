#!/bin/bash

states=('Braska' 'Californee' 'Hawaii' 'Virginny' 'Alabammy')

for state in ${states[@]};
do
	if [ $state=='Hawaii' ];
	then
	echo 'Aloha biznitches'
        else
	  echo "Deuces"
	fi
done
