<?php
/**
 *
 * Fonctions qui affiche un tableau via foreach
 * @param  array méthode qui prend un tableau en parametre d'entrée
 *
 *
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
 * @param array $tab tableaau contenant un underscore par case
 *
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
 * @param array la lettre a recherchee
 * @param array le tableau dans lequel il doit chercher
 * @param array la position de depart de recherche dans le tableau
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
        $tabPos = array_merge($positions, testerLettre($lettre, $tab, $res + $pos + 1));// fusionne les tableau obtenus grace a array search via array merge
        return $tabPos; // renvoie le tableau des position de la lettre recherchee

    }

    /*do
{
for ($i = $pos; $i < count($tab); $i++)
{
if ($lettre == $tab[$i])
{

$tab[$i] = $lettre;
}

}
}
while ($i == count($tab));
return ($tab);*/
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
afficherTableau($positions);*/

function ajouterUneLettre($val,$tab,$key)
{
for ($i=0;$i<count($tab);$i++)
{
   $tab[$key]=$val;
}
}
//etape 4
Echo "Cette méthode doit donner B O N K O U R et ca donne";

$t = array( 'B', 'O', 'N', 'J', 'O', 'U', 'R' );
afficherTableau( ajouterUneLettre('K', $t, 3));

