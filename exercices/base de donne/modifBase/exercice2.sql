executer les 2 instructions suivantes sur la base
ALTER TABLE commandes ADD cde_total int;
UPDATE commandes SET cde_total = quantiteCommande * (select prixArticle from articles where articles.idArticle = commandes.idArticle)

Affichez le contenu de la table commande. Quy a-t-il de changé dans cette table ? Comment le total de la
commande a-t-il été calculé ? 
une colonne a ete ajoutee la colonne cde_total dans la table commandes, le total de la commande a ete calculee en prenant le prix 
de l article de la table article et la quantitee des articles  disponible dans la table commandes

Ecrire des requêtes SELECT. Vous vérifierez que le résultat de la requête correspond à votre inspection des
tables correspondantes. 
A)Afficher le montant le plus élevé de commande.
SELECT MAX(`cde_total`) AS `montant max`,`nomClient`,`prenomClient` FROM `commandes` INNER JOIN `clients` ON `commandes`.`idClient` = `clients`.`idClient`
B) Afficher le montant moyen des commandes.
SELECT ROUND(AVG(`cde_total`),2) AS `montant moyen`FROM `commandes`
C) Afficher le montant le plus bas de commande.
SELECT MIN(`cde_total`) AS `montant min`,`nomClient`,`prenomClient` FROM `commandes` INNER JOIN `clients` ON `commandes`.`idClient` = `clients`.`idClient`
D) Afficher le nombre de commandes qui ont été passées.
SELECT COUNT(`idCommande`) AS `nombre de commandes passees` FROM `commandes`
E) Afficher le montant moyen de commande par client
SELECT ROUND(AVG(`cde_total`),2) AS `montant moyen par client`,`nomClient`,`prenomClient` FROM `commandes` INNER JOIN `clients` ON `commandes`.`idClient` = `clients`.`idClient` GROUP BY `clients`.`idClient`
F) Afficher le montant le plus élevé de commande par client.
SELECT MAX(`cde_total`) AS `montant le plus eleve`,`nomClient`,`prenomClient` FROM `commandes` INNER JOIN `clients` ON `commandes`.`idClient` = `clients`.`idClient` GROUP BY `clients`.`idClient`
G) Afficher le nombre de commandes par client.
SELECT COUNT(`idCommande`) AS `nombre de commandes`,`nomClient`,`prenomClient` FROM `commandes` INNER JOIN `clients` ON `commandes`.`idClient` = `clients`.`idClient` GROUP BY `clients`.`idClient`
H) Afficher le nombre d articles commandés en moyenne par client
SELECT ROUND(AVG(`quantiteCommande`),2) AS `moyenne d article commande`,`nomClient`,`prenomClient` FROM `commandes` INNER JOIN `clients` ON `commandes`.`idClient` = `clients`.`idClient` GROUP BY `clients`.`idClient`
I) Afficher le nombre d articles commandés en moyenne par article.
SELECT ROUND(AVG(`quantiteCommande`),2) AS `moyenne commande par article`,`descriptionArticle` FROM `commandes` INNER JOIN `articles` ON `commandes`.`idArticle` = `articles`.`idArticle` GROUP BY `articles`.`idArticle`
J) Afficher le nombre total d articles commandés par article.
SELECT SUM(`quantiteCommande`) AS `nombre moyen d'articles`,`descriptionArticle` FROM `commandes` INNER JOIN `articles` ON `commandes`.`idArticle` = `articles`.`idArticle` GROUP BY `commandes`.`idArticle`
K) Afficher le nombre moyen d articles par client et par date.
SELECT ROUND(AVG(`quantiteCommande`),2) AS `nombre moyen d'articles`,`descriptionArticle`,`nomClient`,`prenomClient` FROM `commandes` INNER JOIN `articles`, `clients` ON `commandes`.`idArticle` = `articles`.`idArticle`, `commandes`.`idClient` = `clients`.`idClient` GROUP BY `commandes`.`idClient` & `commandes`.`dateCommande`
L) Afficher le nombre de commandes par jour.
M) Afficher le nombre de clients dans la table.
N) Afficher le nombre de clients différents qui ont passé commande.
O) Afficher le nombre d articles différents qui ont été commandés.
P) Afficher le nombre de jours différents de commandes