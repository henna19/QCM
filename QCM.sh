#!/bin/bash
echo -e "\e[36mQuestions sur le Système Solaire\e[0m"
echo -e "\e[36mVous allez avoir 10 questions.\e[0m"
echo ""
sum=0
echo -e "\e[37m1. Combien y a-t-il de planètes dans notre Système solaire ? \e[0m"
ps3="La reponse"
select item in 8 9 10
do 
	if [ ! -z "$item" ]; then
		case $item in 
			8)  sum=$((sum+1));;
		esac
		break
	else
		echo "$REPLY is not valid"
	fi
done
echo " "

echo -e "\e[37m2. Le Soleil est-il une étoile, une planète ou un astéroïde ?\e[0m"
ps3="La reponse"
select item in "Une étoile" "Une planète" "Un astéroïde"
do 
	if [ ! -z "$item" ]; then
		case $item in 
			"Une étoile")  sum=$((sum+1));;
		esac
		break
	else
		echo "$REPLY is not valid"
	fi
done
echo " "

echo -e "\e[37m3. Quelle est la plus grande planète de notre Système solaire ?\e[0m"
ps3="La reponse"
select item in Mercure Saturne Jupiter
do 
	if [ ! -z "$item" ]; then
		case $item in 
			Jupiter)  sum=$((sum+1));;
		esac
		break
	else
		echo "$REPLY is not valid"
	fi
done
echo " "

echo -e "\e[37m4. Quelle est la planète la plus proche du Soleil ?\e[0m"
ps3="La reponse"
select item in Terre Mercure Mars
do 
	if [ ! -z "$item" ]; then
		case $item in 
			Mercure)  sum=$((sum+1));;
		esac
		break
	else
		echo "$REPLY is not valid"
	fi
done
echo " "

echo -e "\e[37m5. Quelle est la planète dont la taille est la plus proche de celle de la Terre ?\e[0m"
ps3="La reponse"
select item in Uranus Neptune Vénus
do 
	if [ ! -z "$item" ]; then
		case $item in 
			Vénus)  sum=$((sum+1));;
		esac
		break
	else
		echo "$REPLY is not valid"
	fi
done
echo " "

echo -e "\e[37m6. Les astéroïdes sont :\e[0m"
ps3="La reponse"
select item in "De petites étoiles" "Des amas de roche et de glace plus ou moins gros" "Des vaisseaux extra-terrestres"
do 
	if [ ! -z "$item" ]; then
		case $item in 
			"Des amas de roche et de glace plus ou moins gros")  sum=$((sum+1));;
		esac
		break
	else
		echo "$REPLY is not valid"
	fi
done
echo " "

echo -e "\e[37m7. Quelle est la planète la plus petite du Système Solaire?\e[0m"
ps3="La reponse"
select item in Venus Mercure Pluto 
do 
	if [ ! -z "$item" ]; then
		case $item in 
			Mercure)  sum=$((sum+1));;
		esac
		break
	else
		echo "$REPLY is not valid"
	fi
done
echo " "

echo -e "\e[37m8. Quelle est la planète appelée le Seigneur des Anneaux?\e[0m"
ps3="La reponse"
select item in Saturne Jupiter Uranus
do 
	if [ ! -z "$item" ]; then
		case $item in 
			Saturne)  sum=$((sum+1));;
		esac
		break
	else
		echo "$REPLY is not valid"
	fi
done
echo " "

echo -e "\e[37m9. Quelle est la planète la plus lointaine du système solaire?\e[0m"
ps3="La reponse"
select item in Uranus Mars Neptune
do 
	if [ ! -z "$item" ]; then
		case $item in 
			Neptune)  sum=$((sum+1));;
		esac
		break
	else
		echo "$REPLY is not valid"
	fi
done
echo " "

echo -e "\e[37m10. Y a-t-il de l’air entre les planètes?\e[0m"
ps3="La reponse"
select item in Oui Non
do 
	if [ ! -z "$item" ]; then
		case $item in 
			Non)  sum=$((sum+1));;
		esac
		break
	else
		echo "$REPLY is not valid"
	fi
done
echo " "

if [ $sum -gt 8 ]
then
	echo -e "\e[1;33mTu es doué\e[0m"
	echo -e "\e[1;33mVous avez scoré $sum point\e[0m"
elif [ $sum -gt 5 ] && [ $sum -lt 8 ]
then
	echo -e "\e[1;33mPas mal\e[0m"
	echo -e "\e[1;33mVous avez scoré $sum point\e[0m"
else 
	echo -e "\e[1;33mTu es nulle\e[0m"
	echo -e "\e[1;33mVous avez scoré $sum point\e[0m"
fi

