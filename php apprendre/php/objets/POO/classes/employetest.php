<?php
//charge les fichiers de classe necessaires au programme
function ChargerClasse($classe)
{
    require $classe . ".Class.php";
}
spl_autoload_register("ChargerClasse");



/*
Description : Affiche les éléments du tableau séparés par une tabulation // Utilisation du foreach
$tab : tableau à afficher
 */
function afficheTableau($tab)
{
    echo "\n";
    foreach ($tab as $elt) // le tableau est parcouru de la 1ere à la dernière case, les cases sont mises tour à tous dans $elt
    {
        echo $elt->toString() . "\n";
    }
    echo "\n";
}

//creation agences



//creation des employés
$emp[] = new Employe(["Nom" => "bobozo", "Prenom" => "thomas", "DateEmbauche" => new DateTime('2015-02-15'), "fonction" => "directeur des ventes", "SalaireAnnuel" => 26, "service" => "vente","agence"=>"camping"]); // les dateTime il faut indiquer en annee-mois-jour
$emp[] = new Employe(["Nom" => "gecepah", "Prenom" => "georges", "DateEmbauche" => new DateTime('2005-09-21'), "fonction" => "comptable", "SalaireAnnuel" => 11, "service" => "comptabilitée","agence"=>"resort"]);
$emp[] = new Employe(["Nom" => "isus", "Prenom" => "sophie", "DateEmbauche" => new DateTime('2017-08-06'), "fonction" => "secrétaire", "SalaireAnnuel" => 13, "service" => "comptabilitée","agence"=>"equals"]);
$emp[] = new Employe(["Nom" => "nacrov", "Prenom" => "alex", "DateEmbauche" => new DateTime('2012-03-24'), "fonction" => "comptable", "SalaireAnnuel" => 16, "service" => "comptabilitée","agence"=>"camping"]);
$emp[] = new Employe(["Nom" => "thesion", "Prenom" => "francis", "DateEmbauche" => new DateTime('2008-04-17'), "fonction" => "commercial", "SalaireAnnuel" => 13, "service" => "vente","agence"=>"resort"]);

//Ordre de transfert PRIME
$dateAujourdhui = new DateTime('now');
$jourDePrime = (new DateTime())->setDate($dateAujourdhui->format('Y'), 9, 30);


if ($jourDePrime < $dateAujourdhui)
{ //on compare les dates
    foreach ($emp as $elt)
    {
        echo "L'ordre de transfert a été envoyé à la banque pour " . $elt->getNom()." " . $elt->getPrenom(). " d'un montant de ".$elt->prime()."\n";
    }
}
else
{
    echo "L'ordre de transfert n'a pas été envoyé à la banque\n";
}

echo "Il y a " . Employe::getNombreEmploye() . " créé \n";

//TRI


usort($emp, array("Employe", "compareToServiceNomPrenom"));
AfficheTableau($emp);


//Masse Salariale
$masseSalarialeTotale = 0;
foreach ($emp as $elt)
{
    $masseSalarialeTotale += $elt->masseSalariale();
}
echo "La masse salariale totale est de " . $masseSalarialeTotale . "\n";

