<?php

//charge les fichiers de classe necessaires au programme
function ChargerClasse($classe)
{
	require $classe . ".Class.php";
}
spl_autoload_register("ChargerClasse");


// on crée d'abord les auteurs
$auteur1 = new Auteur (["Nom"=>"dupont", "Prenom"=>"toto","Naissance"=>new DateTime('1999-11-21')]); // remplacer le mot classe par le nom de la classe de l objet a creer
$auteur2 = new Auteur (["Nom"=>"debouse", "Prenom"=>"robert","Naissance"=>new DateTime('1978-08-01')]);
$auteur3 = new Auteur (["Nom"=>"tyron", "Prenom"=>"georges","Naissance"=>new DateTime('1444-12-16'), "Deces"=>new DateTime('1460-10-11')]);

// on crée les documents
//$Document1 = new Document (["Titre"=>"Les ballons", "Auteur"=>$Auteur1]); // remplacer le mot classe par le nom de la classe de l objet a creer
//$Document2 = new Document (["Titre"=>"Les voitures", "Auteur"=>$Auteur2]);
//$Document3 = new Document (["Titre"=>"Les chiens", "Auteur"=>$Auteur3]);

$livre = new Livre (["Titre"=>"Les ballons", "Auteur"=>$auteur1,"NbPages"=>300]); // remplacer le mot classe par le nom de la classe de l objet a creer
$video = new Video (["Titre"=>"Les voitures", "Auteur"=>$auteur2,"SousTitres"=>"oui"]); // remplacer le mot classe par le nom de la classe de l objet a creer
$audio = new Audio (["Titre"=>"Les chiens", "Auteur"=>$auteur3,"Duree"=>11]); // remplacer le mot classe par le nom de la classe de l objet a creer*/


echo $livre->toString();
echo $video->toString();
echo $audio->toString();