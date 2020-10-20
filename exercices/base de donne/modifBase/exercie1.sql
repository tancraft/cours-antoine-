*-----------------------------------------
* Affichez la totalité de la table « client ».
*-------------------------------------
SELECT 'idClient', 'nomClient', 'prenomClient', 'dateEntreeClient'
FROM 'clients'

*-----------------------------------------
* Affichez les noms de tous les clients
*-------------------------------------

SELECT 'nomClient'
FROM 'clients'
SELECT CONTACT('nomClient', " ",'prenomClient' ) AS "Nom du Client" FROM 'clients'
*-----------------------------------------
* Affichez les différentes dates de commandes sans répétition grace a distinct
*-------------------------------------

SELECT DISTINCT 'dateCommande'
FROM 'commandes'

*-----------------------------------------
* Affichez les clients qui se prénomment « sophie », mettre la valeur cherchee entre cote
*-------------------------------------

SELECT `nomClient`, `prenomClient`
FROM `clients`
WHERE `prenomClient`="sophie"

*-----------------------------------------
* Affichez les numéros des articles et leur quantité commandés par le client1.
*-------------------------------------

SELECT descriptionArticle, quantiteCommande
FROM commandes INNER JOIN clients, articles ON commandes.idClient, commandes.idArticle
WHERE idClient = 2