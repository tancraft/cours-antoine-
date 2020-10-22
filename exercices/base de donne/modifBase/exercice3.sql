Ecrire des requêtes SELECT. Vous vérifierez que le résultat de la requête correspond à votre inspection des
tables correspondantes. 


A)Les noms des étudiants nés avant l''étudiant « JULES LECLERCQ »
SELECT `nomEtudiant`, `prenomEtudiant`, `dateNaissanceEtudiant` FROM `etudiants` WHERE `dateNaissanceEtudiant` <( SELECT `dateNaissanceEtudiant` FROM `etudiants` WHERE `nomEtudiant` = "LECLERCQ" AND `prenomEtudiant` = "Jules" ) ORDER BY `etudiants`.`dateNaissanceEtudiant`
B) Les noms et notes des étudiants qui ont,à l''épreuve 4, une note supérieure à la moyenne de cette épreuve.
SELECT `nomEtudiant`,`prenomEtudiant`,`note`, ROUND((SELECT AVG(`note`) FROM `avoir_note` WHERE `avoir_note`.`idEpreuve`=4),2) As `moyenne de l'epreuve` FROM `avoir_note` INNER JOIN `etudiants` ON `avoir_note`.`idEtudiant`= `etudiants`.`idEtudiant`WHERE `avoir_note`.`idEpreuve`=4 AND `avoir_note`.`note`>(SELECT AVG(`note`) FROM `avoir_note` WHERE `avoir_note`.`idEpreuve`=4)
C) Le nom des étudiants qui ont obtenu un 12 ou plus.
SELECT `nomEtudiant`, `prenomEtudiant`,`note` FROM `avoir_note` INNER JOIN `etudiants` ON `avoir_note`.`idEtudiant`= `etudiants`.`idEtudiant` WHERE `note`>=12 AND `idEpreuve` = 4 ORDER BY `avoir_note`.`note`
D)Le nom des étudiants qui ont dans l''épreuve 4 une note supérieure à celle obtenue par « LUC DUPONT »(à cette même épreuve).
SELECT `nomEtudiant`, `prenomEtudiant`,`note` FROM `avoir_note` INNER JOIN `etudiants` ON `avoir_note`.`idEtudiant`= `etudiants`.`idEtudiant` WHERE `avoir_note`.`idEpreuve` = 4 AND `avoir_note`.`note`>(SELECT `note` FROM `avoir_note` INNER JOIN `etudiants` ON `avoir_note`.`idEtudiant`=`etudiants`.`idEtudiant`  WHERE  `nomEtudiant` = "DUPONT" AND `prenomEtudiant` = "Luc" AND `avoir_note`.`idEpreuve` = 4 ) ORDER BY `avoir_note`.`note`
E) Le nom des étudiants qui partagent une ou plusieurs notes avec « LUC DUPONT ».
SELECT `idEpreuve`,`nomEtudiant`, `prenomEtudiant`,`note` FROM `avoir_note` INNER JOIN `etudiants` ON `avoir_note`.`idEtudiant`= `etudiants`.`idEtudiant` WHERE `avoir_note`.`note`IN (SELECT `note` FROM `avoir_note` INNER JOIN `etudiants` ON `avoir_note`.`idEtudiant`=`etudiants`.`idEtudiant`  WHERE  `nomEtudiant` = "DUPONT" AND `prenomEtudiant` = "Luc") AND `idEpreuve` IN (SELECT `idEpreuve` FROM `avoir_note` INNER JOIN `etudiants` ON `avoir_note`.`idEtudiant`=`etudiants`.`idEtudiant`  WHERE  `nomEtudiant` = "DUPONT" AND `prenomEtudiant` = "Luc") ORDER BY `avoir_note`.`idEpreuve`
F) Ajoutez une colonne HOBBY à la table ETUDIANT. Cette colonne est de type chaine sur 20 caractères.
Par défaut le HOBBY est mis à SPORT. 
ALTER TABLE `etudiants` ADD hobby VARCHAR(20) DEFAULT 'sport';
ALTER TABLE `etudiants` DROP hobby;
G) Ajouter à la table ETUDIANT une colonne NEWCOL de type INTEGER (vérifier en affichant la
structure de la table) puis la supprimer (vérifier de nouveau la suppression).
ALTER TABLE `etudiants` ADD newcol INT(10) NOT NULL;
ALTER TABLE `etudiants` DROP newcol;
H) Vérifiez que PREnomEtudiant peut ne pas avoir de contenu puis indiquez que la colonne PREnomEtudiant
doit obligatoirement avoir une valeur. Vérifiez sur la description de la table.
DESCRIBE `etudiants` 
ALTER TABLE  `etudiants` MODIFY  `prenomEtudiant`VARCHAR(50) NOT NULL
I)Insérez les enregistrements suivants: 7, ''interro écrite',9,1,'21-oct-96'',1 dans EPREUVE 
1,7,10
2,7,08
3,7,05
4,7,09 
17,3,15 dans AVOIR_NOTE
J) Changez la note de n°3 dans l''épreuve7, elle passe à 07. Vérifiez les valeurs avant et après la requête.
K) N°1 a mis de la bonne volonté, on augmente sa note dans l''épreuve 7 de 1 point. Vérifiez.
L) Détruisez l''épreuve 7 qui a été annulée pour cause de tricherie et les notes qui lui correspondent. Vérifiez.
M)Réflexion : N'y aurait-il pas eu moyen de détruire les notes de l'épreuve automatiquement dès la destruction de l''épreuve ?
N) Changez toutes les notes de MARKE dans la matière « BASES DE DONNEES ». Suite à un mauvais comportement, elles diminuent toutes de 3 points. Attention, la requête doit intégrer le nom de la matière.
(et non chercher à repérer le numéro avant de la taper.)
O) DEWA a manqué l''épreuve 4. Vu son niveau, on décide de lui créer une entrée dans AVOIR_NOTE en lui
attribuant la moyenne des notes obtenues à cette épreuve par ses collègues*0.9. Attention, la requête doit
intégrer le nom de l''étudiant (et non chercher à repérer le numéro avant de la taper.)
P)Insérez un nouvel étudiant dont vous ne connaissez que le numéro, le nom, le prénom, le hobby et
l''année: 25, 'DARTE','REMY','SCULPTURE',1.