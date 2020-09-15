<?php


// on demande l'age de l'enfant
$age = readline("entrer l'age de votre enfant: ");

// on teste les categories en fonction de la tranche d'age
if ($age<6)
{

   echo "votre enfant n'entre dans aucune catégorie";

}

else if ($age>=6 && $age<8)
{

   echo "votre enfant est un poussin";

}


else if ($age>=8 && $age<10)
{

   echo "votre enfant est un pupille";

}

else if ($age>=10 && $age<12)
{

   echo "votre enfant est un minime";

}

else
{

   echo "votre enfant est un cadet";

}
?>