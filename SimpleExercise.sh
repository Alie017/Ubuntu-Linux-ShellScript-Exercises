echo "Shell name is $BASH" 
echo "Shell version is $BASH_VERSION"
echo "Home directory is $HOME"
echo "Current working directory is $PWD"
echo "----------------------------" 
echo "Number of arguments is $#"
echo "----------------------------"
array1=("$@")
echo "array1 size is ${#array1[@]}"
echo "array1 is: $1 $2 $3 $4 $5 $6 $7 $8"
echo "----------------------------"
array2=($5 $6 $7 $8)
echo "array2 size is ${#array2[@]}"
echo "array2 is: $5 $6 $7 $8"
echo "----------------------------"
echo "PLease choose an index of array2 to remove an element: $arelement"
read 
if [[ $REPLY  == 1 ]]
then
unset array2[0]
echo "choice is 1"
echo "array2 after removing element at index 1 is [$6 $7 $8]"
echo "after removing element at index 1 array2 size is ${#array2[@]}" 
elif [[ $REPLY  ==  2 ]]
then 
unset array2[1]
echo "choice is 2"
echo "array2 after removing element at index 2 is [$5 $7 $8]"
echo "after removing element at index 2 array2 size is ${#array2[@]}" 
elif  [[ $REPLY == 3 ]]
then 
unset array2[2]
echo "choice is 3"
echo "array2 after removing element at index 3 is [$5 $6 $8]"
echo "after removing element at index 3 array2 size is ${#array2[@]}" 
elif [[ $REPLY ==  4 ]]
then 
unset array2[3]
echo "choice is 4"
echo "array2 after removing element at index 4 is [$5 $6 $7]"
echo "after removing element at index 4 array2 size is ${#array2[@]}" 
fi

echo "----------------------------"
fact=1
for((i=2;i<=$1;i++))
{
  fact=$((fact * i)) 
}
echo "factorial of $1 is  $fact"
echo "----------------------------"
if [[ $2  = '+' ]]
   then
echo "the result of $fact + $3 is $((fact+$3)) "
array1[1]=$((fact+$3))
elif [[ $2  = '-' ]]
   then
    echo "the result of $fact - $3 is $((fact-$3)) "
array1[1]=$((fact-$3))
elif [[ $2  = '/' ]]
   then
    echo "the result of $fact / $3 is $((fact/$3)) "
array1[1]=$((fact/$3))
elif [[ $2  = '*' ]]
   then
    echo "the result of $fact * $3 is $((fact*$3)) "
array1[1]=$((fact*$3))
elif [[ $2  = '%' ]]
   then
    echo "the result of $fact % $3 is $((fact%$3)) "
array1[1]=$((fact%$3))
else
echo "***************"
echo "your 2. argument is invalid. Your second argument should be one the followings: +,-,\*,%"
fi
echo "----------------------------"
if [ -f $4 ]
then
echo "$4 file found"
else 
echo "file not found"
fi
echo "----------------------------"

for (( i = 0; i <= ${#array2[@]} ; i++ )); do
echo  "------- ${array2[$i]} -------"
eval "${array2[$i]}"
done
