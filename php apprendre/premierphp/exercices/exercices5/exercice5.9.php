<?php

$sommdu=0; // initialise variable sommdu

do
{
   do 
   {
       do 
       {
           $nbart = readline("combien d'articles avez vous ? ");// on demande le nombre d'articles a passer

       } 
       while(!is_numeric($nbart));// on verifie qu'il s'agit d'un chiffre

    } 
    while(!is_int($nbart * 1));// on verifie qu'il s'agit d'un entier
}
while($nbart<=0);// si le nombre d'article est superieure ou egal a 0

for ($i=1; $i<$nbart+1; $i++)
{
    
    do
    {
        do 
        {
           do 
           {

               $prixart = readline("indiquer le prix de l'artcle n° $i: ");// on demande le prix de chaque article

           }
           while(!is_numeric($prixart)); // on verifie qu'il s'agit d'un chiffre
         
        }
        while(!is_int($prixart*1)); // on verifie qu'il s'agit d'un entier

    }
    while($prixart<=0); // si le prix est superieure ou egal a 0

       $sommdu = $sommdu+$prixart;

}

echo "vous devez ".$sommdu." euros\n";

do
{
   do 
   {
       do 
       {
           $paie = readline("combien allez vous verser? ");// on demande combien le client va donner

       } 
       while(!is_numeric($paie));// on verifie qu'il s'agit d'un chiffre

    } 
    while(!is_int($paie * 1));// on verifie qu'il s'agit d'un entier
}
while($paie< $sommdu);// si le nombre d'article est superieure ou egal a 0

$remb = $paie-$sommdu;

echo $remb;

