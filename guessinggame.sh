#!/bin/bash 
echo "How many files are there in the current directory?"
read response

Flag=true
number="$(find . -maxdepth 1 -type f | wc -l)"

while $Flag
do
if [[ $response -gt $number ]]
 then 
  echo "Your guess is too high"
  sleep 0.5
  echo "Please try again"
  read response
  continue
 elif [[ $response -lt $number ]]
  then echo "Your guess is too low"
  sleep 0.5
  echo "Please try again"
  read response
  continue
else
 echo "congrats! You have gussed the correct number."
fi
Flag=false
done 
