<?php

/*
/*inclus le fichier 
include "Fonctions_tableaux.php";

/* inclus le fichier s'il n'est pas présent
include_once "Fonctions_tableaux.php";
*/


/* le fichier est requis, le programme s'arrête si le fichier n'est pas dispo */
require "Fonctions_tableaux.php";

$tailletab1= demandeEntier("merci d'entrer le nombre de notes a saisir: ");

$tab1= creerTab($tailletab1);




?>