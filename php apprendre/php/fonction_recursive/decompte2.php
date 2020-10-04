<?php

// fonctionne pas


function decompte($nombre)//creation de la fonction nombre
{

       $nombre--;
    if($nombre > 0)// condition d'arret tant qu on est pas a zero
    {
        decompte($nombre);//on rappelle la fonction en enlevant-1 a chaque tour   
        
        
    }
    else
    {

        return(0); 

    }

}

//test
$nombre= readline("veuillez entrez un nombre: ");

echo "\t...".decompte($nombre)."...\n";

echo "\tfin du decompte\n";