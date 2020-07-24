#! /bin/bash

echo -e "\e[33m A - DISPLAY THE CONTENT\e[0m"
echo -e "\e[32m-------------------------------\e[0m"
echo -e "\e[36m B - APPEND THE CONTENT\e[0m"
echo -e "\e[32m-------------------------------\e[0m"
echo -e "\e[31m C - OVERWRITE THE CONTENT\e[0m"
echo -e "\e[32m-------------------------------\e[0m"
echo -e "\e[32m D - DELETE THE CONTENT\e[0m"
echo -e "\e[32m-------------------------------\e[0m"
echo -e "\e[35m E - REMOVE THE FILE\e[0m"
echo -e "\e[32m-------------------------------\e[0m"
echo -e "\e[36m F - CREATE A NEW FILE\e[0m"
echo -e "\e[32m-------------------------------\e[0m"
read -p "chose your option A|B|C|D|E|F:" option
echo -e "\e[32m-------------------------------\e[0m"
read -p "Enter the file name u want to Perform the operation:" fname

case $option in
  A )
     if [ -e $fname ] ; then	  
      if [ ! -s $fname ] ; then
	 echo "it is an empty file"
      else
	echo "the content of the file is "
	echo "--------------------------"
	cat $fname
      fi
     else
	echo -e "\e[33mopps! file doesnot exists\e[0m" 
     fi
     ;;
  B )
      read -p "Enter the data which u want:" data
      echo $data >> $fname
      echo "data apended"
      ;;
  C )
      read -p "Enter the data which u want to overwrite:" data
      echo $data > $fname
      echo "old data should be overwrite"
      ;;
  D )
      read -p "enter the file which u want to delete:" data
      cat /dev/null > $fname
      echo "content of the file is deleted"
      ;;
  E )
      read -p "Enter the file which u want to delete:" fname
      rm -r $fname
      echo "$fname file is deleted successfully"
      ;;
  F ) touch $fname
      echo "$fname created successfully"
      ;;
       
   * )
	 echo "plz enter correct file"

esac
