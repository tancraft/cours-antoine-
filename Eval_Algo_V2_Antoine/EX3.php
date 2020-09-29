<?php
//tableau des scores a comparer pour avoir la moyenne et le plus grand score
$score = [7, 19, 7, 18, 12, 16, 19, 2, 13, 5, 3, 14, 11, 15, 19, 20, 4, 15];

//variables nécessaires
$somme = 0;
$moy = 0;
$plusgrand = 0;
$nbscores = 0;

//affichage du tableau
echo "\n";
foreach ($score as $elt) // le tableau est parcouru de la 1ere à la dernière case, les cases sont mises tour à tour dans $elt
{
    echo $elt . "\t";
}
echo "\n";

for ($i = 0; $i < count($score); $i++) 
{

    $somme += $score[$i]; //calcul de la somme des scores

    if ($score[$i] > $plusgrand) 
    {
        //recherche du plus grand score et $pos correspond a sa position dans le tableau
        $plusgrand = $score[$i];
        $pos = $i + 1; // je rajoute +1 pour pas que lors de l affichage cela m indique 0 par exemple si en premiere position

    }

    if ($score[$i] > 10) 
    {

        $nbscores += 1; //ajout du nombre de scores au dessus de 10

    }
}

$moy = $somme / count($score); // ici on calcule la moyenne du total des scores par la taille du tableau


//affichage des informations
echo "La somme des scores est de ".$somme.". La moyenne est de ".$moy."\n";

echo "Il y a ".$nbscores. " scores au dessus de 10.\n";

echo "Le plus haut score est de ".$plusgrand.", il a été réalisé par la personne n°".$pos;