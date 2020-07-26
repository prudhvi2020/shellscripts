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
	amount=$[amount+quantity*230]
	;;
   B )
        echo "you have selected CHICKEN-DUM-BIRYANI"
        read -p "Enter no of plates you required:" quantity
        amount=$[amount+quantity*200]
	   ;;
   C )
       echo "you have selected VEG-BIRYANI"
       read -p "Enter no of plates you required:" quantity
       amount=$[amount+quantity*140]
       ;;
         	   
   D )
       echo "you have selected EGG-BIRYANI"
       read -p "Enter no of plates you required:" quantity
       amount=$[amount+quantity*175]
       ;;
   * )
	   echo "Plz select valid option"
  esac
  read -p "Do You want any other items:[YES|NO]" option
  case $option in	  
	  [Yy]|[yY][Ee][eE][Ss][sS] )
	  continue 
	  ;;

          [Nn]|[Nn][Oo])
	  break
	  ;;
  esac
done
 echo "Your Total amount is:$amount "
 echo "Thanks for visiting my hotel"
