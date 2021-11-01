#!/bin/bash

states=( 'California' 'Minnesota' 'Pennsylvania' 'Texas' 'Wisconsin')
nums=$( echo {0..9})

for state  in ${states[@]}

do
 if [ $state = 'Hawaii'  ]
then
echo "Hawaii is the place to be!"
else
echo "I'm not fond of Hawaii"
fi
done

for num in ${nums[@]}
do
if [ $num =3] || [ $num =5 ] || [ $num = 7]
then
echo $num
fi
done
