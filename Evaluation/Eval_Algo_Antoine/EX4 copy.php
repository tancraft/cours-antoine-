<?php


// exercice pour afficher les stats d' un avion choisi

$tab1=["BOING747","AIRBUSA380","LEARJET45","DC10","CONCORDE","ANTONOV32"];
$tab2=["BO","AB","LI","DC","CO","AN"];
$tab3=[800,950,700,900,1400,560];
$tab4=[10000,12000,4500,8000,16000,2500];

echo "****\tSTATISTIQUES AVIONS\t****";
$i=0;
do
{
   $code=readline("Entrez le code de l'avion : ");
  $trouver=false;
   if($code == $tab[$i])
   {
     $trouver=true;
   
   }
   $i++;
}
while(!$trouver);
echo "il existe pas !!!";

    for ($i=0;$i<count($tab2);$i++)// tri par insertion
    {
      $code=readline("Entrez le code de l'avion : ");
      $trouver=false;

           if ($code == $tab2[$i])// verification des valeurs les plus grandes
           {
             
            $trouver=true;

            echo"parametres de l'avion ";

           }
        

    }
    

