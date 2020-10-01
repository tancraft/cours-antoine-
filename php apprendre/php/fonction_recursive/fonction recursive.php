<?php

//trouver une fonction recursive sui retourne un mot
function retournermot($mot)
{
    $temp= $tab[$i];
    $mot= $mot[(strlen($mot)-1)-$i];
    $mot[strlen($mot-1)-$i] =$temp;
    if ($i == strlen($mot)) 
    {
       return $mot;

    } else 
    {
      retournermot();


    }
}


$mot="bonjour";

retournermot($mot);

echo $mot;