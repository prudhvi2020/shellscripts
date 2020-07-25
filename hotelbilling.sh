#! /bin/bash
echo "Welcome To My hotel "
echo
amount=0
while [ true ]
do
  echo "Menu items "
  echo ".................."
  echo "A --->CHICKEN-FRY-PICE BIRYANI (Each Plate Rs 230 /-)"
  echo "B --->CHICKEN-DUM BIRYANI (Each Plate Rs 200 /-)"
  echo "C --->VEG-BIRYANI (Each Plate Rs 140 /-)"
  echo "D --->EGG-BIRYANI (Each Plate Rs 175 /-)"
  read -p "plz select any one of the option:A|B|C|D:" option
  case $option in 
   A )
	echo "you have selected HICKEN-FRY-PIECE BIRYANI"
	read -p "Enter no of plates you required:" quantity
	c1=$[amount+quantity*230]
	d1=$[c1*18/100]
	amount=$[d1+c1]
	;;
   B )
        echo "you have selected CHICKEN-DUM-BIRYANI"
        read -p "Enter no of plates you required:" quantity
        c1=$[amount+quantity*200]
	d1=$[c1*18/100]
	amount=$[d1+c1]
	   ;;
   C )
       echo "you have selected VEG-BIRYANI"
       read -p "Enter no of plates you required:" quantity
       c1=$[amount+quantity*140]
       d1=$[c1*18/100]
       amount=$[d1+c1]
       ;;
         	   
   D )
       echo "you have selected EGG-BIRYANI"
       read -p "Enter no of plates you required:" quantity
       c1=$[amount+quantity*175]
       d1=$[c1*18/100]
       amount=$[d1+c1]
       ;;
   * )
	   echo "Plz select valid option"
  esac
  read -p "Do You want any other items:[YES|NO]" option
  case $option in	  
	  [Yy]|[yY][Ee][eE][Ss][sS] )
	  continue 
	  ;;

          [Nn]|[nN][oO][Oo] )
	  break
	  ;;
  esac
done
 echo "Your Total amount is:$amount (including gst)"
 echo "Thanks for visiting my hotel"
