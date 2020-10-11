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
        } while (!is_numeric($nombre)); // on verifie que la chaine de caractere ne contient que des chiffres
    } while (!is_int($nombre * 1)); // on vérifie que le nombre est entier (pas réel)
    return $nombre; //renvoi le nombre saisi
}

/**
 * fonction qui permet de lister les attributs choisi au depart
 *
 * @param array $tabatt tableau avec les attributs dedans
 * @return string l affichage des attributs du tableau
 */
function afficheAttributs(array $tabatt) // en ajoutant array on recoit que des tableaux
{
    $attributs = "";
    foreach ($tabatt as $elt)
    {
        $attributs .= "\t" . 'private $_' . $elt . ';' . "\n"; //les elements sont les attributs
    }
    return $attributs;
}

/**
 * fonction qui permet de lister les getters et setters
 *
 * @param array $tabatt tableau avec les attributs dedans
 * @return string l affichage des getters setters selon les  attributs du tableau
 */
function afficheGetSet(array $tabatt) // en ajoutant array on recoit que des tableaux
{
    $getSet = "";
    foreach ($tabatt as $elt)
    {
        $getSet .= "\t" . 'public function get' . ucfirst($elt) . '()' . "\n" . //les elements sont les attributs
        "\t" . '{' . "\n" .
        "\t\t" . 'return $this->_' . $elt . ';' . "\n" .
        "\t" . '}' . "\n\n" .

        "\t" . 'public function set' . ucfirst($elt) . '($' . $elt . ')' . "\n" . //les elements sont les attributs
        "\t" . '{' . "\n" .
            "\t\t" . 'return $this->_' . $elt . ' = $' . $elt . ';' . "\n" .
            "\t" . '}' . "\n\n";
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
    } while (!ctype_alpha($att)); // on boucle tant que la saisie n'est pas de type alpha
    $tabatt[] = $att; //on remplit le tableau des attributs avec la saisie reussi
}

$fp = fopen('./' . $classe . '.Class.php', "w"); // on cree le fichier

$entete = '<?php' . "\n\n" .
    'class ' . $classe . "\n" .
    '{' . "\n";

fputs($fp, $entete); // on affiche l'entete

$ajoutAttributs = "\t" . '/*****************Attributs***************** */' . "\n" .
afficheAttributs($tabatt);

fputs($fp, $ajoutAttributs); // on affiche les attributs

$ajoutGetSet = "\t" . '/*****************Accesseurs***************** */' . "\n" .
afficheGetSet($tabatt);
fputs($fp, $ajoutGetSet);

$ajoutConstruct = "\t" . '/*****************Constructeur***************** */' . "\n\n" . //creer une variable string pour le constructeur

"\t " . 'public function __construct(array $options = [])' . "\n" .
    "\t" . '{' .
    "\t\t" . 'if (!empty($options)) // empty : renvoi vrai si le tableau est vide' . "\n" .
    "\t\t" . '{' . "\n" .
    "\t\t\t" . '$this->hydrate($options);' . "\n" .
    "\t\t" . ' }' . "\n" .
    "\t" . '}' . "\n" .
    "\t" . 'public function hydrate($data)' . "\n" .
    "\t" . '{' . "\n" .
    "\t\t" . 'foreach ($data as $key => $value)' . "\n" .
    "\t\t" . '{' . "\n" .
    "\t\t\t" . '$methode = "set" . ucfirst($key); //ucfirst met la 1ere lettre en majuscule' . "\n" .
    "\t\t\t" . 'if (is_callable(([$this, $methode]))) // is_callable verifie que la methode existe' . "\n" .
    "\t\t\t" . '{' . "\n" .
    "\t\t\t\t" . '$this->$methode($value);' . "\n" .
    "\t\t\t" . '}' . "\n" .
    "\t\t" . '}' . "\n" .
    "\t" . '}' . "\n\n";
fputs($fp, $ajoutConstruct);

$ajoutMethode = "\t" . '/*****************Autres Méthodes***************** */' . "\n" .

    "\t" . '/**' . "\n" .
    "\t" . '* Transforme l objet en chaine de caractères' . "\n" .
    "\t" . '*' . "\n" .
    "\t" . '* @return String' . "\n" .
    "\t" . '*/' . "\n" .
    "\t" . 'public function toString()' . "\n" .
    "\t" . '{' . "\n" .
    "\t\t" . 'return ' . "\" \";" . "\n" .
    "\t" . '}' . "\n\n" .

    "\t" . '/**' . "\n" .
    "\t" . '* Renvoi vrai si l objet en paramètre est égal à l objet appelant' . "\n" .
    "\t" . '*' . "\n" .
    "\t" . '* @param [type] $obj' . "\n" .
    "\t" . '* @return bool' . "\n" .
    "\t" . '*/' . "\n" .
    "\t" . 'public function equalsTo($obj)' . "\n" .
    "\t" . '{' . "\n" .
    "\t\t" . ' return true;' . "\n" .
    "\t" . '}' . "\n\n" .

    "\t" . '/**' . "\n" .
    "\t" . '* Compare 2 objets' . "\n" .
    "\t" . '* Renvoi 1 si le 1er est >' . "\n" .
    "\t" . '* 0 si ils sont égaux' . "\n" .
    "\t" . '* -1 si le 1er est <' . "\n" .
    "\t" . '*' . "\n" .
    "\t" . '* @param [type] $obj1' . "\n" .
    "\t" . '* @param [type] $obj2' . "\n" .
    "\t" . '* @return void' . "\n" .
    "\t" . '*/' . "\n" .
    "\t" . 'public static function compareTo($obj1, $obj2)' . "\n" .
    "\t" . '{' . "\n" .
    "\t\t" . 'return 0;' . "\n" .
    "\t" . '}' . "\n\n";

fputs($fp, $ajoutMethode);

fputs($fp, "}");
