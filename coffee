#!/usr/bin/bash

echo "this is your daily destressor"
sleep 1
echo "please verify the date"
date 
sleep 1
echo "does this look correct?"
read user_date

echo "Now, rate your day on a scale of 1-10"
read -e rating
echo "did you drink coffee today (y/n)"
read -e answer 

coffee_type="n/a"
reason="n/a"
if [ "$answer" = "y" ];then
	echo "yay!"
       	echo "what did it taste like?"
	read -e description
	coffee_type=$description
	echo -e "\nso you had coffee today and it was $description. your rating for the day was $rating."

else
	echo "how come?" 
	read -e question
	reason=$question
	echo -e "\nso you didn't have coffee today. that's because $question. well you don't need coffee anyway! your rating for the day was $rating"
fi
	#perform date check maybe? 
	simp_date=$(date '+Date: %A, %B %d, %Y')
	echo -e "\n$simp_date, rating: $rating, coffee: $answer, coffee description: $coffee_type, reason for not having coffee: $reason" >> daily_log.txt

	echo "storing data...."	
	sleep 1 
	echo "...."
	sleep 1
	echo "...." 
	sleep 1
	echo "...." 
	sleep 1
	echo "...."
	sleep 1
	echo "your information for the day has been recorded! Good job checking in today"
	
 
