#important question for our interview
num=0
while [[ expr $num%2==0  &&  $num -le 10  ]]
do 
   echo $num
   num=$((num+1))
   done