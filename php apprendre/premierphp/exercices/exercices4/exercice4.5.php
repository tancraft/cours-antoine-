<?php

// on demande le sexe a l'utilisateur
$sexe = readline("merci d'indiquer votre sexe (tapez m ou f): ");

// on test quand meme que la valeur entrée est correcte sinon on redemande

if ($sexe != "m" && $sexe != "f") {

    echo "votre saisi est incorrecte\n";
    $sexe = readline("merci d'indiquer votre sexe (tapez m ou f: ");

}

// on demande l'age de l'utilisateur
$age = readline("merci d'indiquer votre age: ");

// on test les prerequis afin de savoir si on paye ou pas un impot

if ($age > 20 && $sexe = "m" or ($age > 18 && $age < 35) && $sexe = "f") {

    echo "vous payer un impot";
} else {
    echo "vous ne payer pas d'impot";

}
