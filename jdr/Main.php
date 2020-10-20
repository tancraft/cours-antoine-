<?php

require "RpgFonctions.php";//appelle le fichier des fonctions du jeu
// Autoload pour les classes
function chargerClasse($classe)
{
    require $classe . ".class.php";
}
spl_autoload_register("chargerClasse");



$joueur = creerPerso();

echo $joueur->toString();
