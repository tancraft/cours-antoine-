<?php

function afficherTableau($tab)
{
    echo "\n";

    echo "\n";
    foreach ($tab as $elt) // le tableau est parcouru de la 1ere à la dernière case, les cases sont mises tour à tour dans $elt
    {
        echo $elt . "\t";
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

function coderMot($t)
{


    for ($i = 0; $i<count($t);$i++)
    {

      if ($i==0)
      {

        echo $t[$i]." ";

      }
      else if($i==max($t))
      {
         echo $t[$i];

      }
      else
      {
          $mid=$t["_ "];
         echo $mid;

      }
    }
    return($t);

}

$test = "bonjour";

$t= str_split($test);

echo "Cette méthode doit donner        et ca donne : " . afficherTableau(coderMot($t));
