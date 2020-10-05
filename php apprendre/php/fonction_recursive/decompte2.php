<?php

// fonctionne pas


function decompte($nombre)//creation de la fonction nombre
{

       $decompte=$nombre;

    if($decompte == 0)// condition d'arret quand egal a zero
    {
    
        return 0;
        
    }
    else
    {

       
    decompte($decompte-1);//on rappelle la fonction en enlevant-1 a chaque tour
    }

}

//test
$nombre= readline("veuillez entrez un nombre: ");

echo "\t...".decompte($nombre)."...\n";

echo "\tfin du decompte\n";