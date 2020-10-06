<?php
//charge les fichiers de classe necessaires au programme
function ChargerClasse($classe)
{
    require $classe . ".Class.php";
}
spl_autoload_register("ChargerClasse");

/**
 *
 * sert a tester par rapport a la date si la prime de l'employé est envoyée
 *
 *
 * @param Classe $obj objet a tester
 * @return echo si la prime est envoyée ou non
 */
function testEnvoiPrime($obj)
{

//Ordre de transfert
    $dateAujourdhui = new DateTime('now');
// $annee = $dateAujourdhui->format('Y');
    // $jourDePrime = new DateTime('30-11-' . $annee);
    $jourDePrime = (new DateTime())->setDate($dateAujourdhui->format('Y'), 11, 30);
    echo "Jour de prime :\n";
    echo "Jour aujourd'hui :\n";

    if ($jourDePrime < $dateAujourdhui) { //on compare les dates
        echo "L'ordre de transfert a été envoyé à la banque :\n\n" . $obj->prime();
    } else {
        echo "L'ordre de transfert n'a pas été envoyé à la banque\n\n";
    }

}


function compareService()
{






}

//creation des employés
$emp1 = new Employe(["Nom" => "bobozo", "Prenom" => "thomas", "DateEmbauche" => new DateTime('2015-02-15'), "fonction" => "directeur des ventes", "SalaireAnnuel" => 26, "service" => "vente"]); // les dateTime il faut indiquer en annee-mois-jour
$emp2 = new Employe(["Nom" => "gecepah", "Prenom" => "georges", "DateEmbauche" => new DateTime('2005-09-21'), "fonction" => "comptable", "SalaireAnnuel" => 11, "service" => "comptabilitée"]);
$emp3 = new Employe(["Nom" => "isus", "Prenom" => "sophie", "DateEmbauche" => new DateTime('2017-08-06'), "fonction" => "secrétaire", "SalaireAnnuel" => 13, "service" => "comptabilitée"]);
$emp4 = new Employe(["Nom" => "nacrov", "Prenom" => "alex", "DateEmbauche" => new DateTime('2012-03-24'), "fonction" => "comptable", "SalaireAnnuel" => 16, "service" => "comptabilitée"]);
$emp5 = new Employe(["Nom" => "thesion", "Prenom" => "francis", "DateEmbauche" => new DateTime('2008-04-17'), "fonction" => "commercial", "SalaireAnnuel" => 13, "service" => "vente"]);

echo "le montant de la prime annuelle pour " . $emp1->getPrenom() . " " . $emp1->getNom() . " est de " . $emp1->prime() . " euros.\n";
testEnvoiPrime($emp1);
echo "le montant de la prime annuelle pour " . $emp2->getPrenom() . " " . $emp2->getNom() . " est de " . $emp2->prime() . " euros.\n";
testEnvoiPrime($emp2);
echo "le montant de la prime annuelle pour " . $emp3->getPrenom() . " " . $emp3->getNom() . " est de " . $emp3->prime() . " euros.\n";
testEnvoiPrime($emp3);
echo "le montant de la prime annuelle pour " . $emp4->getPrenom() . " " . $emp4->getNom() . " est de " . $emp4->prime() . " euros.\n";
testEnvoiPrime($emp4);
echo "le montant de la prime annuelle pour " . $emp5->getPrenom() . " " . $emp5->getNom() . " est de " . $emp5->prime() . " euros.\n";
testEnvoiPrime($emp5);

$tabemp = [$emp1, $emp2, $emp3, $emp4, $emp5];
sort($tabemp); //permet de trier le tableaau par nom et prenom situé dans les objets renvoi vrai faux mais nous interresse pas sur cet exercice

foreach ($tabemp as $elt) // le tableau est parcouru de la 1ere à la dernière case, les cases sont mises tour à tour dans $elt
{
    echo $elt->toString(); // defini que le toString de l'objet est l element a afficher
}
//usort($tabemp, "compareService()");
