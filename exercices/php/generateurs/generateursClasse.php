<?php

/**
 * fonction pour verifier si le chiffre saisi est bien un entier
 *
 * @param string $phrase mettez la phrase pour la saisie que vous attendez
 * @return int retourne un entier
 */
function demandeEntier($phrase) // Demande un entier à l'utilisateur

{
    do
    {
        do
        {
            $nombre = readline($phrase);
        } 
        while (!is_numeric($nombre)); // on verifie que la chaine de caractere ne contient que des chiffres
    } 
    while (!is_int($nombre * 1)); // on vérifie que le nombre est entier (pas réel)
    return $nombre; //renvoi le nombre saisi
}

/**
 * fonction qui permet de lister les attributs choisi au depart
 * 
 * @param array $tabatt tableau avec les attributs dedans
 * @return string l affichage des attributs du tableau
 */
function afficheAttributs(Array $tabatt)// en ajoutant array on recoit que des tableaux
{
    $attributs = "";
    foreach ($tabatt as $elt)
    {
        $attributs .="\t".'private $_'.$elt.';'."\n";//les elements sont les attributs
    }
    return $attributs;
}

/**
 * fonction qui permet de lister les getters et setters
 * 
 * @param array $tabatt tableau avec les attributs dedans
 * @return string l affichage des getters setters selon les  attributs du tableau
 */
function afficheGetSet(Array $tabatt)// en ajoutant array on recoit que des tableaux
{
    $getSet = "";
    foreach ($tabatt as $elt)
    {
        $getSet .="\t".'private $_'.$elt.';'."\n";//les elements sont les attributs
    }
    return $getSet;
}

//saisie des paramettres
$classe = ucfirst(readline("Quel est le nom de votre classe? ")); // on indique le nom de la classe en mettant la premiere lettre en maj
$nbatt = demandeEntier("Combien d'attributs avez vous besoin? "); // on demande combien ilfaut d'attributs

for ($i = 0; $i < $nbatt; $i++)
{
    do
    {
        $att = readline("veulliez entrer le nom de votre attribut: ");
    } 
    while (!ctype_alpha($att)); // on boucle tant que la saisie n'est pas de type alpha
    $tabatt[] = $att; //on remplit le tableau des attributs avec la saisie reussi

}

$fp = fopen('./' . $classe . 'Class.php', "w"); // on cree le fichier

$entete = '<?php' . "\n\n" .
    'class' . $classe . "\n" .
    '{' . "\n";

fputs($fp, $entete); // on affiche l'entete

$ajoutAttributs = "\t" . '/*****************Attributs***************** */'.
                    afficheAttributs($tabatt);

 fputs($fp, $ajoutAttributs); // on affiche les attributs 
// /*****************Accesseurs***************** */ // creer une booucle pour afficher les getters setters(fonction plus simple a utiliser)

// /*****************Constructeur***************** */ //creer une variable string pour le constructeur

// public function __construct(array $options = [])
// {
//     if (!empty($options)) // empty : renvoi vrai si le tableau est vide
//     {
//         $this->hydrate($options);
//     }
// }
// public function hydrate($data)
// {
//     foreach ($data as $key => $value)
//     {
//         $methode = "set" . ucfirst($key); //ucfirst met la 1ere lettre en majuscule
//         if (is_callable(([$this, $methode]))) // is_callable verifie que la methode existe
//         {
//             $this->$methode($value);
//         }
//     }
// }

// /*****************Autres Méthodes***************** */  // creer string

// /**
//  * Transforme l'objet en chaine de caractères
//  *
//  * @return String
//  */
// public function toString() // creer une boucle avec les attributs
// {
//     return "";
// }

// /**
//  * Renvoi vrai si l'objet en paramètre est égal à l'objet appelant
//  *
//  * @param [type] $obj
//  * @return bool
//  */
// public function equalsTo($obj)  // creer string
// {
//     return true;
// }
// /**
//  * Compare 2 objets
//  * Renvoi 1 si le 1er est >
//  *        0 si ils sont égaux
//  *        -1 si le 1er est <
//  *
//  * @param [type] $obj1
//  * @param [type] $obj2
//  * @return void
//  */
// public static function compareTo($obj1, $obj2)  //creer string
// {
//     return 0;
// }
fputs($fp,"\n}");
