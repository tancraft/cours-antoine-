<?php
// affichage d'une table de multiplication selon un nombre donner et possibilitee d'en faire d'autres

echo "**** \tTable de multiplication\t****\n";

do 
{
// on demande un nombre à l'utilisateur
    $nb = readline("Entrer le nombre pour lequel vous voulez la table de multiplication : ");

// on demande l'affichage de la table de multiplication entiere
    for ($i = 1; $i <= 10; $i++) // boucle pour le calcul et l'affichage de la table de multiplication
    {
        //calcul et affichage de la table de multiplication
        echo $nb . "\tx" . $i . "\t=" . $nb * $i;
        echo "\n";

    }

    do 
    {

        $choix = strtoupper(readline("Voulez vous continuer ? ")); // je demande a se que la casse soit obligatoirement une majuscule mais ne fonctionne pas

    } while ($choix != "O" && $choix != "N");
} while ($choix == "O");
