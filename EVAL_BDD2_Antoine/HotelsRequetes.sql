1)	Afficher la liste des hôtels Le résultat doit faire apparaître le nom de l’hôtel et la ville
SELECT `nomHotel`,`villeHotel`FROM `hotels`
2)	Afficher la ville de résidence de Mr White Le résultat doit faire apparaître le nom, le prénom, l adresse et la ville du client
SELECT `nomClient`, `prenomClient`, `adresseClient`, `villeClient` FROM `clients` WHERE `nomClient`= "white"
3)	Afficher la liste des stations dont l’altitude < 1000 Le résultat doit faire apparaître le nom de la station et l altitude
SELECT `nomStation`, `altitudeStation` FROM `stations` WHERE `altitudeStation`>1000
4)	Afficher la liste des chambres ayant une capacité > 1 Le résultat doit faire apparaître le numéro de la chambre ainsi que la capacité
SELECT `numChambre`,`capaciteChambre` FROM `chambres` WHERE `capaciteChambre`>1
5)	Afficher les clients n’habitant pas à Londres Le résultat doit faire apparaître le nom du client et la ville
SELECT `nomClient`, `villeClient` FROM `clients` WHERE `villeClient` != "Londres"
6)	Afficher la liste des hôtels avec  leur station (Nom de la station, Nom de l’hôtel, Catégorie, Ville)
SELECT `nomStation`, `nomHotel`, `categorieHotel`,`villeHotel`  FROM `hotels` INNER JOIN `stations` ON `hotels`.`idStation`= `stations`.`idStation`
7)  Afficher la liste des chambres et leur hôtel Le résultat doit faire apparaître le numéro de la chambre, le nom de l’hôtel, la catégorie, la ville, 
SELECT `numChambre`, `nomHotel`, `categorieHotel`, `villeHotel`  FROM `chambres` INNER JOIN `hotels` ON `chambres`.`idHotel`= `hotels`.`idHotel`
8)	 Afficher la liste des réservations avec le nom des clients, le résultat doit faire apparaitre la date de réservation, début et fin de séjour
SELECT `dateReservationSejour`, `dateDebutSejour`, `dateFinSejour`, `nomClient`FROM `reservations` INNER JOIN `clients` ON `reservations`.`idClient`= `clients`.`idClient`
9)	Afficher la liste des chambres (numéro) avec le nom de l’hôtel et le nom de la station
SELECT `numChambre`,`nomHotel`,  `nomStation` FROM `chambres` INNER JOIN `hotels` ON `chambres`.`idHotel`= `hotels`.`idHotel` INNER JOIN `stations` ON `hotels`.`idStation`= `stations`.`idStation`
10)	Afficher la liste des chambres de plus d une place dans des hôtels situés sur la ville de Bretou (Numéro de chambre, nom de l hôtel, catégorie de l hôtel, ville de l hôtel, capacité de la chambre)
SELECT `numChambre`,`nomHotel`, `categorieHotel`, `villeHotel`,`capaciteChambre` FROM `chambres` INNER JOIN `hotels` ON `chambres`.`idHotel`= `hotels`.`idHotel` WHERE `villeHotel` = "Bretou" AND `capaciteChambre`>1
11)	Compter le nombre d’hôtels par station (nom de la station, nombre d’hôtel)
SELECT `nomStation`, COUNT(`hotels`.`idStation`) AS "nombres d'hotels" FROM `hotels` INNER JOIN `stations` ON `hotels`.`idStation`= `stations`.`idStation`  GROUP BY `nomStation`
12)	Compter le nombre de chambres par station (nom de la station, nombre de chambres)
SELECT `nomStation`, COUNT(`chambres`.`idChambre`) AS "nombre de chambres" FROM `chambres` INNER JOIN `hotels` ON `chambres`.`idHotel`= `hotels`.`idHotel` INNER JOIN `stations` ON `hotels`.`idStation`= `stations`.`idStation` GROUP BY `nomStation`
13)	Compter le nombre de chambres par station ayant une capacité > 1 (nom de la station, nombre de chambres)
SELECT `nomStation`, COUNT(`chambres`.`idChambre`) AS "nombre de chambres" FROM `chambres` INNER JOIN `hotels` ON `chambres`.`idHotel`= `hotels`.`idHotel` INNER JOIN `stations` ON `hotels`.`idStation`= `stations`.`idStation` WHERE `capaciteChambre`>1 GROUP BY `nomStation`
14)	Afficher la liste des hôtels pour lesquels Mr Squire a effectué une réservation (nom de l’hôtel)
SELECT `hotels`. `nomHotel`, COUNT(`reservations`.`idClient`) AS "nombre de reservation" FROM `reservations` INNER JOIN `clients` ON `reservations`.`idClient`= `clients`.`idClient` INNER JOIN `chambres` ON `reservations`.`idChambre`= `chambres`.`idChambre` INNER JOIN `hotels` ON `chambres`.`idHotel`= `hotels`.`idHotel` WHERE `nomClient` = "Squire" GROUP BY `hotels`. `nomHotel`
15)	Afficher la durée moyenne des réservations par station (nom de la station, durée moyenne)
SELECT `stations`.`nomStation`, ROUND(AVG(DATEDIFF( `dateDebutSejour`, `dateFinSejour`)),2) AS  "duree moyenne"  FROM `reservations` INNER JOIN `chambres` ON `reservations`.`idChambre`= `chambres`.`idChambre` INNER JOIN `hotels` ON `chambres`.`idHotel`= `hotels`.`idHotel` INNER JOIN `stations` ON `hotels`.`idStation`= `stations`.`idStation` GROUP BY `nomStation`
16)	Créer une vue qui lit les tables Station, Hôtel et Chambres appelée StationChambre
CREATE VIEW `StationChambre` AS 
SELECT `stations`.`nomStation`, `hotels`. `nomHotel`,`chambres`.`numChambre`
FROM `hotels`
INNER JOIN `chambres` ON `chambres`.`idHotel`= `hotels`.`idHotel`
INNER JOIN `stations` ON `hotels`.`idStation`= `stations`.`idStation`

17)	Créer une vue qui lit les tables Station, Hôtel et Chambres en jointure gauche appelée StationChambreLeft
CREATE VIEW `StationChambreLeft` AS 
SELECT `stations`.`nomStation`, `hotels`. `nomHotel`,`chambres`.`numChambre`
FROM `hotels`
LEFT JOIN `chambres` ON `chambres`.`idHotel`= `hotels`.`idHotel`
LEFT JOIN `stations` ON `hotels`.`idStation`= `stations`.`idStation`
18)	Ajouter un champ archivé dans la table réservation 
ALTER TABLE `reservations` ADD `archive` VARCHAR(50) NOT NULL;
19)	Créer une procédure stockée qui modifie les enregistrements de la table réservation pour mettre archivé à oui quand la date de fin est inférieure à la date du jour appelée archivage. 
DELIMITER |
CREATE  PROCEDURE `archivage`()
BEGIN
UPDATE `reservations` SET `archive` = "oui" WHERE `dateFinSejour` < CURDATE();
END |
DELIMITER ;


