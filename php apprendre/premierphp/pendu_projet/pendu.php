<?php
//test2
require "fonctions_pendu.php";

    

do 
{ 
    echo "**** PENDU V1 ****";
       lancerPartie();

       do 
       {
   
           $choix = strtoupper(readline("Voulez vous rejouer (taper O/N)? ")); // je demande a se que la casse soit obligatoirement une majuscule
   
       } while ($choix != "O" && $choix != "N");
}
while($choix=="O");

echo "merci d'avoir jouer";