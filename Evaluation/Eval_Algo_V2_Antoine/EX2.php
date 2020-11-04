<?php

// affichage des nombres premiers

echo "**** LES NOMBRES PREMIERS ****\n";
echo"\n";

$borneinf=readline("Entrer la borne inférieure: ");
$bornesup=readline("Entrer la borne supérieure: ");

// on demande l'affichage des nombres premiers
for ($i = $borneinf; $i <= $bornesup; $i++) //boucle pour affichage des nombres premiers
{     
    if ($i/$i==1 && $i/1==$i)// je sais pas calculer un nombre premier meme en faisant $i%$i==0 &&si%1==0 sa affiche tout les nombres
    {
    echo $i ." est premier \n";
    }
}

