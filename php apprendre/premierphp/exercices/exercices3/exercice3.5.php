<?php
  

  // on demande les valeurs a l utilisateur

  $nb1 = readline("merci d'entrer un nombre: ");

  $nb2 = readline("merci d'entrer un deuxieme nombre: ");

  // on verifie que les deux nombre sont soit positifs ou negatifs

  if ($nb1>0 and $nb2>0 or $nb1<0 and $nb2<0 )

  {

     echo "le produit de ces nombres est positif";

  }

  // on verifie si un des deux chiffre est negatif
   
  else if ($nb1<0 or $nb2<0)

  {

     echo "le produit de ces nombre est negatif: ";

  }

  // sinon c est que le chiffre est nul

  else
  {

     echo "ce chiffre est nul: ";

  }

?>