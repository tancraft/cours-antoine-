<?php

function afficherTableau($tab)
{
    echo "\n";

    for ( $i=0;$i<count($tab);$i++) // la fonction count renvoi la taille du tableau
    {
        echo $tab[$i]." ";
    }
    echo "\n";
}

/*
      $t = array( 'B', 'O', 'N', 'J', 'O', 'U', 'R' );
      Echo "Cette méthode doit donner B O N J O U R et ca donne : " . afficherTableau($t);



      afficherTableau($t);

*/
     // 2. tab[] coderMot($mot)
// méthode qui prend un mot en paramètre d'entrée et qui renvoi un tableau de caractères contenant autant de case que de lettres dans le mot. Chacune de ces cases contient un 
//Lignes à coller dans le main


$test = "bonjour";
echo "Cette méthode doit donner        et ca donne : " . afficherTableau(coderMot($t));




?>