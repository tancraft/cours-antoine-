<?php


// on demande un nombre à l'utilisateur
$nb = readline("entrez un nombre: ");

// on demande l'affichage de la table de multiplication entiere
for ($i = 1; $i < 11; $i++) // on met 11 sinon la table s arrete a 9
{

  echo $nb . "x" . $i . "=" . $nb*$i;
  echo "\n";

}
