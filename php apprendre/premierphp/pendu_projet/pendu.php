<?php
//test2
require "fonctions_pendu.php";
/**
 *
 * Fonctions qui affiche un tableau via foreach
 * @param  [array] tab méthode qui prend un tableau en parametre d'entrée
 *
 */
function afficherTableau($tab)
{

    echo "\n";
    foreach ($tab as $elt) // le tableau est parcouru de la 1ere à la dernière case, les cases sont mises tour à tour dans $elt
    {

        echo $elt . " ";

    }
    echo "\n";
}

/**
 *
 * Fonctions qui remplace les lettres pr un underscore
 * méthode qui prend un mot en paramètre d'entrée
 * @param [array] tab tableaau contenant un underscore par case
 *
 */
function coderMot($mot)
{

    $tab = str_split($mot);
    for ($i = 0; $i < count($tab); $i++) 
    {

        $tab[$i] = "_ "; //ne pas mettre d'echo

    }
    return ($tab);

}

/**
 *
 * fonction qui recherche les occurencess d'une lettre passee en paramettre dans un tableau
 * dans un tableau de caracteres lui meme passee en parametre et renvois les positions dans un tableau
 * @param [char] lettre la lettre a recherchee
 * @param [array]  tab le tableau dans lequel il doit chercher
 * @param [array]  pos la position de depart de recherche dans le tableau
 *
 */
function testerLettre($lettre, $tab, $pos)
{
    $tabRecherche = array_slice($tab, $pos); // utilise le tableau de base pour en creer 1 suite a la fonction array slice
    $res = array_search($lettre, $tabRecherche); //verifie si lettre apparait dans tableaux

    if ($res === false) // === signifie que c est egal en valaur et type de variable
    {

        return []; // retourne rien

    } 
    else // si ne vaut pas false
    {

        $positions[] = $res + $pos; // on veut la position de la lettre dans le mot ($tab) position de la lettre $pos offset du tableau de base
        $tabPos = array_merge($positions, testerLettre($lettre, $tab, $res + $pos + 1)); // fusionne les tableau obtenus grace a array search via array merge
        return $tabPos; // renvoie le tableau des position de la lettre recherchee

    }
}

/**
 *
 * fonction qui permet d'échanger une valeur dans un tableau, renvoi le tableau remplis
 * @param [array] la valeur qui remplace l'ancienne
 * @param [array] le tableau dans lequel on va echanger la valeur
 * @param [array] la position a laquelle nous allons mettre la nouvelle valeur
 *
 */
function ajouterUneLettre($val, $tab, $key)
{

    $tab[$key] = $val;
    return ($tab);

}

/**
 *
 * methode qui permet d'echanger plusieurs valeurs dans un meme tableau et renvoi le tableau remplit
 * renvoi le tableau remplis
 * @param [array] la valeur a ajouter
 * @param [array] le tableau dans lequel on doit ajouter les valeurs
 * @param [array] le tableau avec les positions qui indique quels valeurs sont echanger dans le tableau initial
 *
 */
function ajouterLesLettres($val, $tab, $tabpos)
{

    for ($i = 0; $i < count($tabpos); $i++) //boucle permettant de parcourir le tableau des positions, on sort de la boucle quand tous les echanges sont fait
    { //flag inutile
        for ($j = 0; $j < count($tab); $j++) //boucle permettant de parcourir le tableau ou l'echange doit etre fait
        {

            if ($tabpos[$i] == $j) //si la position dans le tableau pos correspond a la position dans tableau initial on fait l'echange
            {

                ajouterUneLettre($val, $tab, $tabpos[$i]);
                $tab[$j] = $val;

            }
        }

    }
    return ($tab);
}
/**
 * méthode qui demande une lettre à l’utilisateur, elle vérifie que le caractère saisi est une lettre et le renvoi en majuscule.
 * 
 * @return void
 */
function demanderLettre()
{
    do {
        echo "\n";
        $lettre = strtoupper(readline("entrez une lettre"));
    } while ((!ctype_alpha($lettre)) || (strlen($lettre) > 1)); // ou utilisation de  while (!IntlChar::isalpha($lettre))
    return $lettre;
}

/*//etape 1
$t = array('B', 'O', 'N', 'J', 'O', 'U', 'R');
echo "Cette méthode doit donner B O N J O U R et ca donne : " . afficherTableau($t);

afficherTableau($t);

//etape 2
$test = "bonjour";

echo "Cette méthode doit donner _ _ _ _ _ _ _ _ et ca donne :";
afficherTableau(coderMot($test));

//etape 3
echo "Cette méthode doit donner \n 1 \n 4 et ca donne \n";
$t = array('B', 'O', 'N', 'J', 'O', 'U', 'R');
$positions = testerLettre('O', $t, 0);
afficherTableau($positions);

//etape 4
Echo "Cette méthode doit donner B O N K O U R et ca donne";

$t = array( 'B', 'O', 'N', 'J', 'O', 'U', 'R' );
afficherTableau( ajouterUneLettre('K', $t, 3));

//etape 5
$motATrouver="BONJOUR";
$t = array( 'B', '_', 'N', 'J', '_', 'U', '_' );
echo "Cette méthode doit donner B O N J O U _ et ca donne ";
afficherTableau(ajouterLesLettres('O', $t, testerLettre('O', str_split($motATrouver),0)));*/

//etape 6
/* méthode qui renvoi un mot en le choisissant au hasard parmi une liste de mots
Utiliser la méthode CreerDico disponible dans le dossier*/
