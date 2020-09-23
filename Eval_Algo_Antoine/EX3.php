<?php
//algorithme qui calcule les racines de l'equation du 2eme degre et verifie son type
echo "Racine de l'équation du 2nd degré\n\tY=aX^2 + bX +c\n";

do {
// on calcule la racine de l'équation
    $a = readline("Quelle est la valeur de a : \n");
    $b = readline("Quelle est la valeur de b : \n");
    $c = readline("Quelle est la valeur de c : \n");

//calcul de delta
    $delta = $b * $b - 4 * $a * $c;

    // conditions pour tester les valeurs
    if ($a == 0 && $b == 0) // on test si a et b sont egal a 0
    {

        echo "Léquation n'en est plus une !!!\n";

    } else // sinon on test si a est egal a 0
    {
        switch ($a)
        {
            case 0:
                echo "L'équation est du premier degré !\n";
                echo "L'équation s'annule si x=-(c/b) : ". -($c/$b)."\n";
                break;

            default:// et ensuite on test les differentes valeurs possibles pour $delta

                switch ($delta) 
                {

                    case 0:

                        echo "Léquation possède une racine double : \n";
                        echo "d = ".$delta ."\n";
                        echo "x1 = x2 = ".($b/2*$a)."\n";
                        echo "\n";
                        break;

                    case ($delta < 0):

                        echo "Léquation ne possède pas de racine réelle : \n";
                        echo "d = ".$delta ."\n";
                        echo "\n";
                        break;

                    case ($delta > 0):

                        echo "Léquation possède possède 2 racines distincte : \n";
                        echo "d = ".$delta ."\n";
                        echo "L'équation s'annule pour :\n";
                        echo "x1= ".(-$b+$delta)/2*$a."\n";
                        echo "x2= ".(-$b-$delta)/2*$a."\n";
                        echo "\n";
                        break;

                }

        }
    }
    do 
    {

        $choix = strtoupper(readline("Voulez vous continuer ? ")); // je demande a se que la casse soit obligatoirement une majuscule mais ne fonctionne pas

    } while ($choix != "O" && $choix != "N");

} while ($choix == "O");


echo "Au revoir et à bientôt";