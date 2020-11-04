<?php

//algorithme pour verifier les differents etat de l eau selon temperature saisie

$temp = readline ("entrer un nombre: ");//on demande la temperature a tester 

if($temp<=0)// on test si la temperature est en dessous de 0°
{

   echo "à une température de ".$temp."° leau est a l'état solide (gelée)";

}
else if ($temp>=100)// on test si la temperature est au dessus de 100°
{

  echo "à une température de ".$temp."° l'eau est à l'état gazeux (vapeur)";

}
else// sinon on affiche que la temperature est a l'état liquide
{

   echo "à une température de ".$temp."° l'eau est a l'état liquide";

}

?>