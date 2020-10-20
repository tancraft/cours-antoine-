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
        } while (!is_numeric($nombre)); // on verifie que la chaine de caracterer ne contient que des chiffres
    } while (!is_int($nombre * 1)); // on vérifie que le nombre est entier (pas réel)
    return $nombre; //renvoi le nombre saisi
}

/**
 * fonction qui permet de definir le choix de la race que veut incarner le joueur
 *
 * @return Race
 */
function choixRace()
{
    $accepter = "N";
    while ($accepter != "O")
    {
        echo "quelle race voulez vous incarnez?\n\tun Nain (tapez 1)\tun Humain(tapez 2)\tun Elfe(tapez 3)\n";

        $nb = demandeEntier("quel est votre choix? ");

        if ($nb == 1)
        {
            $obj = new Race(["NomRace" => "Nain"]);
        }
        else if ($nb == 2)
        {
            $obj = new Race(["NomRace" => "Humain"]);
        }
        else
        {
            $obj = new Race(["NomRace" => "Elfe"]);
        }
        echo $obj->renvoiDescription();
        $accepter = strtoupper(readline("Etes vous sur de votre choix (O/N)? "));
    }
    return $obj;
}

/**
 * fonction qui permet de definir le choix de la race que veut incarner le joueur
 *
 * @return Classe
 */
function choixClasse()
{
    $accepter = "N";
    while ($accepter != "O")
    {
        echo "quelle rôle voulez vous jouez?\n\tun Guerrier (tapez 1)\tun Mage (tapez 2)\tun Voleur (tapez 3)\tun Clerc (tapez 4)\n";
        $nb = demandeEntier("quel est votre choix? ");

        if ($nb == 1)
        {
            $obj = new Classe(["NomClasse" => "Guerrier"]);
        }
        else if ($nb == 2)
        {
            $obj = new Classe(["NomClasse" => "Mage"]);
        }
        else if ($nb == 3)
        {
            $obj = new Classe(["NomClasse" => "Voleur"]);
        }
        else
        {
            $obj = new Classe(["NomClasse" => "Clerc"]);
        }
        echo $obj->renvoiDescription();
        $accepter = strtoupper(readline("Etes vous sur de votre choix (O/N)? "));
        return $obj;
    }
}

/**
 * fonction qui permet de creer le presonnage du joueur
 *
 * @return Joueur
 */
function creerPerso()
{
    $nom = readline("choisissez votre Nom: ");

    $choixrace = choixRace();
    $classe = choixClasse();

    $joueur = new Joueur(["Nom" => $nom, "PDv" => 50, "PDvMax" => 50, "Race" => $choixrace, "Classe" => $classe]);
    return $joueur;
}
