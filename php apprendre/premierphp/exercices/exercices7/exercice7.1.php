<?php

//verifier si suite de nombre est consecutive
require "fonctions_tableaux.php";

$taille1=demandeEntier("combien de valeur allez vous saisir? ");

$tab1=creerTab($taille1);

if ($tab1[0]>$tab1[1])
{

    $cons=0;
}
else 
{

    $cons=1;
    echo"cette suite n'est pas consecutive";
}

while ($cons==0)
{

    



}


?>