#!/bin/bash

outputfile="users.csv"
echo "email,password,id,name,slug" > $outputfile 
let i=3;
for i in {3..100}
do
    value=$(printf "%03d" $i)
	echo "\"user$value@gmail.com\",\"sdb1234567890\",\"$i\",\"Utilizador$value\",\"user$value\"" >> $outputfile
done;
