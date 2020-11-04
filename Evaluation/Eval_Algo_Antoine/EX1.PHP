<?php

// algorithme qui calcule la circonference et la surface d'un cercle
echo "\tCALCUL D'UN CERCLE\n";
echo "\n";

do 
{
    // on demande le rayon du cercle a l'utilisateur
    $rayon = readline("quel est le rayon du cercle : ");

    //calcul de sa circonference et affichage
    echo "Sa circonférence est de " . "\t: " . 2 * pi() * $rayon . "\n";
    //calcul de sa surface et affichage
    echo "Sa surface est de " . "\t" . "\t: " . pi() * $rayon * $rayon . "\n";
    echo "\n";

    do 
    {

        $choix = strtoupper(readline("Voulez vous faire un autre calcul (O/N) ? ")); // je demande a se que la casse soit obligatoirement une majuscule mais ne fonctionne pas
        echo "\n";

    } 
    while ($choix != "O" && $choix != "N");
} 
while ($choix == "O");

echo "\n";
echo "Au revoir et à bientôt!";
