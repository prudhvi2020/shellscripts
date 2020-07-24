#! /bin/bash
while [ true ]
do 
 read -p "Employee Number:" eno
 read -p "Employee Name: " ename
 read -p "Employee Salary: " esal
 read -p "Employee Address: " eaddr
 echo "$eno   is  employee number" >> emp.txt
 echo "$ename is employee name" >> emp.txt
 echo "$esal  is  employee salary" >> emp.txt
 echo "$eaddr is employee address" >> emp.txt
 echo " -----------------------------" >> emp.txt
 echo "Employee Record Inserted Successfully"
 read -p "Do You want To insert another employee details:[YES]|[NO]:" option
 case $option in
    [Yy]|[yY][Ee][Ss] )
	   continue
	   ;;
    [Nn]|[nN][Oo] )
           break
           ;;
 esac
done
echo -e "\e[33m Thanks For using My application\e[0m"
