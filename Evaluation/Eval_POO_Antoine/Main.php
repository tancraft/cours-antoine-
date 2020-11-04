<?php

//charge les fichiers de classe necessaires au programme
function ChargerClasse($classe)
{
	require $classe . ".Class.php";
}
spl_autoload_register("ChargerClasse");

function crermonstre()
{

  $jet=rand(1,2);
  if ($jet == 1)
  {
    $monstre = new MonstreFacile (["vivant"=>true]);
  }
  else
  {
    $monstre = new MonstreDifficile (["vivant"=>true]);
  }
  return $monstre;
}

$de = new De ([""]); // remplacer le mot classe par le nom de la classe de l objet a creer
$joueur = new joueur (["pointDeVie"=>50]);

do
{
  $monstre = crermonstre();



}while ($joueur->estVivant());

// je laisse tomber j y arrive pas trop nul