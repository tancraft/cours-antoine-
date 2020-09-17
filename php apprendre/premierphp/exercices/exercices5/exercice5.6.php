<?php


// demande saisie d'un nombre avec verification si c'est un entier
do 
{
   do 
   {
        $nb = readline("Entrer un nombre : "); // demande de saisie
   } 
   while (!is_numeric($nb)); // verifier que c'est une valeur numerique

} 
while (!is_int($nb * 1)); // verifier qu'il s'agit d'un entier

$fact=1;

    echo "la factorielle de ".$nb." est: \n";

for ($add=1; $add<$nb+1; $add++)// boucle pour le calcul de la factorielle
{
      $fact = $fact*$add;

   if ($add<$nb) // condition pour affichage du calcul
   {

        echo $add."x";

   }  
   
   else if ( $add == $nb)

        echo $add;

}

     echo "=".$fact; // affichage de la factorielle