<?php


// exercice pour afficher les stats d' un avion choisi

$tab1=["Tableau 1","Avion","BOING747","AIRBUSA380","LEARJET45","DC10","CONCORDE","ANTONOV32"];
$tab2=["Tableau 2","CodeAVION","BO","AB","LI","DC","CO","AN"];
$tab3=["Tableau 3","Vitesse croisière",800,950,700,900,1400,560];
$tab4=["Tableau 4","Rayon d'action",10000,12000,4500,8000,16000,2500];

echo "****\tSTATISTIQUES AVIONS\t****";

do
{
  
   $code=readline("Entrez le code de l'avion : ");



if ($code != $tab2["$i"])
{
  echo "Cet avion n'existe pas";
}

}  
while($code!=$tab2[$i]);


for($i=0; $i<8 ;$i++)
{


}

// pas fini
?>