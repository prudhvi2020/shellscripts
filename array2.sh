#! /bin/bash

# checking the file permisions present in current directory
files=($(ls *))
for fname in ${files[@]}
do
 echo -ne "$fname: \t"
 if [ -r$fname ];then
   echo -ne "read(Y) \t"
 else
 echo -ne "read(N) \t"
 fi
 if [ -w $fname ]; then
 echo -ne "WRITE(Y)\t"
 else
 echo -ne "WRITE(N)\t"
 fi
 if [ -x $fname ]; then
 echo "EXECUTE(Y)"
 else
 echo "EXECUTE(N)"
 fi
done
