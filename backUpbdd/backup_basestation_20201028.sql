-- MySQL dump 10.13  Distrib 5.7.31, for Win64 (x86_64)
--
-- Host: localhost    Database: basestation
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `basestation`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `basestation` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `basestation`;

--
-- Table structure for table `chambres`
--

DROP TABLE IF EXISTS `chambres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chambres` (
  `idChambre` int(11) NOT NULL AUTO_INCREMENT,
  `numeroChambre` int(11) NOT NULL,
  `capacite` int(11) NOT NULL,
  `typeChambre` int(11) NOT NULL,
  `idHotel` int(11) NOT NULL,
  PRIMARY KEY (`idChambre`),
  KEY `FK_chambres_hotels` (`idHotel`),
  CONSTRAINT `FK_chambres_hotels` FOREIGN KEY (`idHotel`) REFERENCES `hotels` (`idHotel`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chambres`
--

LOCK TABLES `chambres` WRITE;
/*!40000 ALTER TABLE `chambres` DISABLE KEYS */;
INSERT INTO `chambres` VALUES (1,101,1,1,1),(2,102,2,1,1),(3,103,1,1,1),(4,104,2,1,2),(5,105,2,1,2),(6,106,1,1,2),(7,107,3,1,3),(8,108,1,1,3),(9,109,2,1,3),(10,235,1,1,4),(11,157,1,1,4),(12,874,1,1,7),(13,125,5,1,7),(14,101,3,1,6),(15,102,3,1,6),(16,103,2,1,10),(17,104,3,1,15),(18,105,3,1,6),(19,106,1,1,15),(20,107,1,1,11),(21,108,2,1,13),(22,109,2,1,10),(23,235,3,1,12),(24,157,1,1,11),(25,874,2,1,7),(26,125,1,1,9),(27,101,3,1,8),(28,102,3,1,15),(29,103,1,1,11),(30,104,1,1,11),(31,105,1,1,13),(32,106,2,1,15),(33,107,2,1,12),(34,108,1,1,9),(35,109,3,1,13),(36,235,3,1,8),(37,157,3,1,14),(38,874,1,1,8),(39,125,2,1,10),(40,101,1,1,1),(41,102,2,1,1),(42,103,1,1,1),(43,104,2,1,2),(44,105,2,1,2),(45,106,1,1,2),(46,107,3,1,3),(47,108,1,1,3),(48,109,2,1,3),(49,235,1,1,4),(50,157,1,1,4),(51,874,1,1,7),(52,125,5,1,7),(53,101,3,1,6),(54,102,3,1,6),(55,103,2,1,10),(56,104,3,1,15),(57,105,3,1,6),(58,106,1,1,15),(59,107,1,1,11),(60,108,2,1,13),(61,109,2,1,10),(62,235,3,1,12),(63,157,1,1,11),(64,874,2,1,7),(65,125,1,1,9),(66,101,3,1,8),(67,102,3,1,15),(68,103,1,1,11),(69,104,1,1,11),(70,105,1,1,13),(71,106,2,1,15),(72,107,2,1,12),(73,108,1,1,9),(74,109,3,1,13),(75,235,3,1,8),(76,157,3,1,14),(77,874,1,1,8),(78,125,2,1,10);
/*!40000 ALTER TABLE `chambres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `idClient` int(11) NOT NULL AUTO_INCREMENT,
  `nomClient` varchar(50) NOT NULL,
  `prenomClient` varchar(50) NOT NULL,
  `adresseClient` varchar(50) NOT NULL,
  `villeClient` varchar(50) NOT NULL,
  PRIMARY KEY (`idClient`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'DOE','John','Rue Du General Leclerc','Chatenay Malabry'),(2,'HOMME','Josh','Rue Danton','Palm Desert'),(3,'PAUL','Weller','Rue Hoche','Londres'),(4,'WHITE','Jack','Allee Gustave Eiffel','Detroit'),(5,'CLAYPOOL','Les','Rue Jean Pierre Timbaud','San Francisco'),(6,'SQUIRE','Chris','Place Paul Vaillant Couturier','Londres'),(7,'WOOD','Ronnie','Rue Erevan','Londres'),(8,'THUNDERS','Johnny','Rue Du General Leclerc','New York'),(9,'JEUNEMAITRE','Eric','Rue Du General Leclerc','Chaville'),(10,'KARAM','Patrick','Rue Danton','Courbevoie'),(11,'RUFET','Corinne','Rue Hoche','Le Plessis Robinson'),(12,'SAINT JUST ','Wallerand','Allee Gustave Eiffel','Marnes La Coquette'),(13,'SANTINI','Jean-Luc','Rue Jean Pierre Timbaud','Chatenay Malabry'),(14,'AIT','Eddie','Place Paul Vaillant Couturier','Le Plessis Robinson'),(15,'BARBOTIN','Eddie','Rue Erevan','Chatenay Malabry'),(16,'BERESSI','Isabelle','Rue Du General Leclerc','Londres'),(17,'CAMARA','Lamine','Rue Ernest Renan','Antony'),(18,'CECCONI','Frank','Rue Georges Marie','Chatenay Malabry'),(19,'CHEVRON','Eric','Boulevard Gallieni','Suresnes'),(20,'CIUNTU','Marie-Carole','Esplanade Du Belvedere','Meudon'),(21,'DOE','John','Rue Du General Leclerc','Chatenay Malabry'),(22,'HOMME','Josh','Rue Danton','Palm Desert'),(23,'PAUL','Weller','Rue Hoche','Londres'),(24,'WHITE','Jack','Allee Gustave Eiffel','Detroit'),(25,'CLAYPOOL','Les','Rue Jean Pierre Timbaud','San Francisco'),(26,'SQUIRE','Chris','Place Paul Vaillant Couturier','Londres'),(27,'WOOD','Ronnie','Rue Erevan','Londres'),(28,'THUNDERS','Johnny','Rue Du General Leclerc','New York'),(29,'JEUNEMAITRE','Eric','Rue Du General Leclerc','Chaville'),(30,'KARAM','Patrick','Rue Danton','Courbevoie'),(31,'RUFET','Corinne','Rue Hoche','Le Plessis Robinson'),(32,'SAINT JUST ','Wallerand','Allee Gustave Eiffel','Marnes La Coquette'),(33,'SANTINI','Jean-Luc','Rue Jean Pierre Timbaud','Chatenay Malabry'),(34,'AIT','Eddie','Place Paul Vaillant Couturier','Le Plessis Robinson'),(35,'BARBOTIN','Eddie','Rue Erevan','Chatenay Malabry'),(36,'BERESSI','Isabelle','Rue Du General Leclerc','Londres'),(37,'CAMARA','Lamine','Rue Ernest Renan','Antony'),(38,'CECCONI','Frank','Rue Georges Marie','Chatenay Malabry'),(39,'CHEVRON','Eric','Boulevard Gallieni','Suresnes'),(40,'CIUNTU','Marie-Carole','Esplanade Du Belvedere','Meudon'),(41,'DOE','John','Rue Du General Leclerc','Chatenay Malabry'),(42,'HOMME','Josh','Rue Danton','Palm Desert'),(43,'PAUL','Weller','Rue Hoche','Londres'),(44,'WHITE','Jack','Allee Gustave Eiffel','Detroit'),(45,'CLAYPOOL','Les','Rue Jean Pierre Timbaud','San Francisco'),(46,'SQUIRE','Chris','Place Paul Vaillant Couturier','Londres'),(47,'WOOD','Ronnie','Rue Erevan','Londres'),(48,'THUNDERS','Johnny','Rue Du General Leclerc','New York'),(49,'JEUNEMAITRE','Eric','Rue Du General Leclerc','Chaville'),(50,'KARAM','Patrick','Rue Danton','Courbevoie'),(51,'RUFET','Corinne','Rue Hoche','Le Plessis Robinson'),(52,'SAINT JUST ','Wallerand','Allee Gustave Eiffel','Marnes La Coquette'),(53,'SANTINI','Jean-Luc','Rue Jean Pierre Timbaud','Chatenay Malabry'),(54,'AIT','Eddie','Place Paul Vaillant Couturier','Le Plessis Robinson'),(55,'BARBOTIN','Eddie','Rue Erevan','Chatenay Malabry'),(56,'BERESSI','Isabelle','Rue Du General Leclerc','Londres'),(57,'CAMARA','Lamine','Rue Ernest Renan','Antony'),(58,'CECCONI','Frank','Rue Georges Marie','Chatenay Malabry'),(59,'CHEVRON','Eric','Boulevard Gallieni','Suresnes'),(60,'CIUNTU','Marie-Carole','Esplanade Du Belvedere','Meudon'),(61,'DOE','John','Rue Du General Leclerc','Chatenay Malabry'),(62,'HOMME','Josh','Rue Danton','Palm Desert'),(63,'PAUL','Weller','Rue Hoche','Londres'),(64,'WHITE','Jack','Allee Gustave Eiffel','Detroit'),(65,'CLAYPOOL','Les','Rue Jean Pierre Timbaud','San Francisco'),(66,'SQUIRE','Chris','Place Paul Vaillant Couturier','Londres'),(67,'WOOD','Ronnie','Rue Erevan','Londres'),(68,'THUNDERS','Johnny','Rue Du General Leclerc','New York'),(69,'JEUNEMAITRE','Eric','Rue Du General Leclerc','Chaville'),(70,'KARAM','Patrick','Rue Danton','Courbevoie'),(71,'RUFET','Corinne','Rue Hoche','Le Plessis Robinson'),(72,'SAINT JUST ','Wallerand','Allee Gustave Eiffel','Marnes La Coquette'),(73,'SANTINI','Jean-Luc','Rue Jean Pierre Timbaud','Chatenay Malabry'),(74,'AIT','Eddie','Place Paul Vaillant Couturier','Le Plessis Robinson'),(75,'BARBOTIN','Eddie','Rue Erevan','Chatenay Malabry'),(76,'BERESSI','Isabelle','Rue Du General Leclerc','Londres'),(77,'CAMARA','Lamine','Rue Ernest Renan','Antony'),(78,'CECCONI','Frank','Rue Georges Marie','Chatenay Malabry'),(79,'CHEVRON','Eric','Boulevard Gallieni','Suresnes'),(80,'CIUNTU','Marie-Carole','Esplanade Du Belvedere','Meudon'),(81,'DOE','John','Rue Du General Leclerc','Chatenay Malabry'),(82,'HOMME','Josh','Rue Danton','Palm Desert'),(83,'PAUL','Weller','Rue Hoche','Londres'),(84,'WHITE','Jack','Allee Gustave Eiffel','Detroit'),(85,'CLAYPOOL','Les','Rue Jean Pierre Timbaud','San Francisco'),(86,'SQUIRE','Chris','Place Paul Vaillant Couturier','Londres'),(87,'WOOD','Ronnie','Rue Erevan','Londres'),(88,'THUNDERS','Johnny','Rue Du General Leclerc','New York'),(89,'JEUNEMAITRE','Eric','Rue Du General Leclerc','Chaville'),(90,'KARAM','Patrick','Rue Danton','Courbevoie'),(91,'RUFET','Corinne','Rue Hoche','Le Plessis Robinson'),(92,'SAINT JUST ','Wallerand','Allee Gustave Eiffel','Marnes La Coquette'),(93,'SANTINI','Jean-Luc','Rue Jean Pierre Timbaud','Chatenay Malabry'),(94,'AIT','Eddie','Place Paul Vaillant Couturier','Le Plessis Robinson'),(95,'BARBOTIN','Eddie','Rue Erevan','Chatenay Malabry'),(96,'BERESSI','Isabelle','Rue Du General Leclerc','Londres'),(97,'CAMARA','Lamine','Rue Ernest Renan','Antony'),(98,'CECCONI','Frank','Rue Georges Marie','Chatenay Malabry'),(99,'CHEVRON','Eric','Boulevard Gallieni','Suresnes'),(100,'CIUNTU','Marie-Carole','Esplanade Du Belvedere','Meudon');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotels`
--

DROP TABLE IF EXISTS `hotels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotels` (
  `idHotel` int(11) NOT NULL AUTO_INCREMENT,
  `nomHotel` varchar(50) NOT NULL,
  `categorie` int(5) NOT NULL,
  `adresseHotel` varchar(50) NOT NULL,
  `villeHotel` varchar(50) NOT NULL,
  `idStation` int(11) NOT NULL,
  PRIMARY KEY (`idHotel`),
  KEY `FK_hotels_stations` (`idStation`),
  CONSTRAINT `FK_hotels_stations` FOREIGN KEY (`idStation`) REFERENCES `stations` (`idStation`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotels`
--

LOCK TABLES `hotels` WRITE;
/*!40000 ALTER TABLE `hotels` DISABLE KEYS */;
INSERT INTO `hotels` VALUES (1,'Le Magnifique',3,'rue du bas','Pralo',1),(2,'Hotel du haut',1,'rue du haut','Pralo',1),(3,'Le Narval',3,'place de la liberation','Vonten',2),(4,'Les Pissenlis',4,'place du 14 juillet','Bretou',2),(5,'RR Hotel',5,'place du bas','Bretou',2),(6,'La Brique',2,'place du haut','Bretou',2),(7,'Le Beau Rivage',3,'place du centre','Toras',3),(8,'Residence les marmottes',1,'1 Chemin des randonneurs','Alpe d Huez',6),(9,'Residence les edelweiss',5,'2 Rue des sapins','Areches',2),(10,'Residence les panoramas',4,'7 Avenue de la neige','Beaufort',2),(11,'Residence les sapins',5,'8 Chemin des pissenlits','Aussois',4),(12,'Chalets les marmottes',3,'10 Rue des etables','Avoriaz',3),(13,'Chalets les edelweiss',3,'8 Avenue des sapins','Alpe d Huez',8),(14,'Chalets les panoramas',2,'3 Chemin de la neige','Areches',6),(15,'Chalets les sapins',5,'3 Rue des pissenlits','Beaufort',8),(16,'Le Magnifique',3,'rue du bas','Pralo',1),(17,'Hotel du haut',1,'rue du haut','Pralo',1),(18,'Le Narval',3,'place de la liberation','Vonten',2),(19,'Les Pissenlis',4,'place du 14 juillet','Bretou',2),(20,'RR Hotel',5,'place du bas','Bretou',2),(21,'La Brique',2,'place du haut','Bretou',2),(22,'Le Beau Rivage',3,'place du centre','Toras',3),(23,'Residence les marmottes',1,'1 Chemin des randonneurs','Alpe d Huez',6),(24,'Residence les edelweiss',5,'2 Rue des sapins','Areches',2),(25,'Residence les panoramas',4,'7 Avenue de la neige','Beaufort',2),(26,'Residence les sapins',5,'8 Chemin des pissenlits','Aussois',4),(27,'Chalets les marmottes',3,'10 Rue des etables','Avoriaz',3),(28,'Chalets les edelweiss',3,'8 Avenue des sapins','Alpe d Huez',8),(29,'Chalets les panoramas',2,'3 Chemin de la neige','Areches',6),(30,'Chalets les sapins',5,'3 Rue des pissenlits','Beaufort',8),(31,'Le Magnifique',3,'rue du bas','Pralo',1),(32,'Hotel du haut',1,'rue du haut','Pralo',1),(33,'Le Narval',3,'place de la liberation','Vonten',2),(34,'Les Pissenlis',4,'place du 14 juillet','Bretou',2),(35,'RR Hotel',5,'place du bas','Bretou',2),(36,'La Brique',2,'place du haut','Bretou',2),(37,'Le Beau Rivage',3,'place du centre','Toras',3),(38,'Residence les marmottes',1,'1 Chemin des randonneurs','Alpe d Huez',6),(39,'Residence les edelweiss',5,'2 Rue des sapins','Areches',2),(40,'Residence les panoramas',4,'7 Avenue de la neige','Beaufort',2),(41,'Residence les sapins',5,'8 Chemin des pissenlits','Aussois',4),(42,'Chalets les marmottes',3,'10 Rue des etables','Avoriaz',3),(43,'Chalets les edelweiss',3,'8 Avenue des sapins','Alpe d Huez',8),(44,'Chalets les panoramas',2,'3 Chemin de la neige','Areches',6),(45,'Chalets les sapins',5,'3 Rue des pissenlits','Beaufort',8),(46,'Le Magnifique',3,'rue du bas','Pralo',1),(47,'Hotel du haut',1,'rue du haut','Pralo',1),(48,'Le Narval',3,'place de la liberation','Vonten',2),(49,'Les Pissenlis',4,'place du 14 juillet','Bretou',2),(50,'RR Hotel',5,'place du bas','Bretou',2),(51,'La Brique',2,'place du haut','Bretou',2),(52,'Le Beau Rivage',3,'place du centre','Toras',3),(53,'Residence les marmottes',1,'1 Chemin des randonneurs','Alpe d Huez',6),(54,'Residence les edelweiss',5,'2 Rue des sapins','Areches',2),(55,'Residence les panoramas',4,'7 Avenue de la neige','Beaufort',2),(56,'Residence les sapins',5,'8 Chemin des pissenlits','Aussois',4),(57,'Chalets les marmottes',3,'10 Rue des etables','Avoriaz',3),(58,'Chalets les edelweiss',3,'8 Avenue des sapins','Alpe d Huez',8),(59,'Chalets les panoramas',2,'3 Chemin de la neige','Areches',6),(60,'Chalets les sapins',5,'3 Rue des pissenlits','Beaufort',8),(61,'Le Magnifique',3,'rue du bas','Pralo',1),(62,'Hotel du haut',1,'rue du haut','Pralo',1),(63,'Le Narval',3,'place de la liberation','Vonten',2),(64,'Les Pissenlis',4,'place du 14 juillet','Bretou',2),(65,'RR Hotel',5,'place du bas','Bretou',2),(66,'La Brique',2,'place du haut','Bretou',2),(67,'Le Beau Rivage',3,'place du centre','Toras',3),(68,'Residence les marmottes',1,'1 Chemin des randonneurs','Alpe d Huez',6),(69,'Residence les edelweiss',5,'2 Rue des sapins','Areches',2),(70,'Residence les panoramas',4,'7 Avenue de la neige','Beaufort',2),(71,'Residence les sapins',5,'8 Chemin des pissenlits','Aussois',4),(72,'Chalets les marmottes',3,'10 Rue des etables','Avoriaz',3),(73,'Chalets les edelweiss',3,'8 Avenue des sapins','Alpe d Huez',8),(74,'Chalets les panoramas',2,'3 Chemin de la neige','Areches',6),(75,'Chalets les sapins',5,'3 Rue des pissenlits','Beaufort',8);
/*!40000 ALTER TABLE `hotels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservations` (
  `idReservation` int(11) NOT NULL AUTO_INCREMENT,
  `dateReservation` date NOT NULL,
  `dateDebut` date NOT NULL,
  `dateFin` date NOT NULL,
  `prixLocation` double NOT NULL,
  `arrhes` double NOT NULL,
  `idChambre` int(11) NOT NULL,
  `idClient` int(11) NOT NULL,
  PRIMARY KEY (`idReservation`),
  KEY `FK_reservations_chambres` (`idChambre`),
  KEY `FK_reservations_clients` (`idClient`),
  CONSTRAINT `FK_reservations_chambres` FOREIGN KEY (`idChambre`) REFERENCES `chambres` (`idChambre`),
  CONSTRAINT `FK_reservations_clients` FOREIGN KEY (`idClient`) REFERENCES `clients` (`idClient`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservations`
--

LOCK TABLES `reservations` WRITE;
/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;
INSERT INTO `reservations` VALUES (1,'2019-11-04','2019-11-13','2019-11-17',400,50,1,3),(2,'2019-04-20','2019-05-07','2019-05-09',2400,800,1,1),(3,'2020-01-11','2020-02-12','2020-02-18',3400,100,2,2),(4,'2019-06-19','2019-08-05','2019-08-18',7200,180,2,4),(5,'2019-04-02','2019-04-29','2019-05-03',1400,450,3,5),(6,'2019-10-20','2019-12-01','2019-12-15',2400,780,4,6),(7,'2019-02-27','2019-03-31','2019-04-04',500,80,4,6),(8,'2019-07-21','2019-08-16','2019-08-16',40,0,4,8),(9,'2019-10-12','2019-11-23','2019-11-29',580,58,8,15),(10,'2019-12-22','2020-01-27','2020-01-30',140,14,9,17),(11,'2019-07-21','2019-08-18','2019-08-21',360,36,8,15),(12,'2019-01-10','2019-02-20','2019-03-01',1380,138,4,20),(13,'2019-04-09','2019-04-17','2019-05-02',420,42,13,16),(14,'2019-05-21','2019-06-13','2019-06-26',360,36,13,16),(15,'2019-07-26','2019-08-09','2019-08-20',680,68,12,1),(16,'2019-11-29','2019-11-30','2019-12-14',1280,128,21,15),(17,'2019-03-12','2019-04-06','2019-04-09',420,42,14,19),(18,'2019-01-17','2019-01-24','2019-01-28',260,26,24,12),(19,'2020-01-02','2020-02-15','2020-02-24',1380,138,12,9),(20,'2019-09-10','2019-09-24','2019-10-01',1430,143,4,12),(21,'2019-05-11','2019-06-10','2019-06-14',820,82,23,1),(22,'2019-10-21','2019-10-24','2019-10-31',650,65,10,11),(23,'2020-01-12','2020-03-04','2020-03-09',1290,129,20,14),(24,'2019-04-02','2019-05-02','2019-05-09',1030,103,15,19),(25,'2019-01-04','2019-02-15','2019-02-25',470,47,17,17),(26,'2019-05-17','2019-05-31','2019-06-03',1460,146,14,16),(27,'2019-04-12','2019-05-23','2019-05-28',1310,131,21,6),(28,'2019-06-26','2019-07-15','2019-07-21',460,46,20,9),(29,'2019-04-09','2019-05-23','2019-05-27',350,35,18,17),(30,'2019-06-14','2019-08-02','2019-08-04',890,89,23,14),(31,'2019-03-06','2019-03-23','2019-03-31',1440,144,12,14),(32,'2019-03-27','2019-04-29','2019-05-07',1010,101,19,17),(33,'2019-02-11','2019-03-08','2019-03-22',790,79,16,13),(34,'2019-04-15','2019-04-23','2019-05-04',270,27,2,5),(35,'2019-03-25','2019-05-02','2019-05-16',660,66,19,19),(36,'2019-05-01','2019-06-14','2019-06-18',140,14,4,13),(37,'2020-01-10','2020-02-24','2020-02-29',1460,146,19,14),(38,'2019-11-24','2019-11-30','2019-12-01',790,79,4,6),(39,'2020-01-13','2020-01-30','2020-02-14',390,39,20,15);
/*!40000 ALTER TABLE `reservations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stations`
--

DROP TABLE IF EXISTS `stations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stations` (
  `idStation` int(11) NOT NULL AUTO_INCREMENT,
  `nomStation` varchar(50) NOT NULL,
  `altitude` int(11) NOT NULL,
  PRIMARY KEY (`idStation`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stations`
--

LOCK TABLES `stations` WRITE;
/*!40000 ALTER TABLE `stations` DISABLE KEYS */;
INSERT INTO `stations` VALUES (1,'La Montagne',2500),(2,'Le Sud',200),(3,'La Plage',10),(4,'Alpe d Huez',1860),(5,'Areches',1200),(6,'Beaufort',1200),(7,'Aussois',1500),(8,'Avoriaz',1800),(9,'La Montagne',2500),(10,'Le Sud',200),(11,'La Plage',10),(12,'Alpe d Huez',1860),(13,'Areches',1200),(14,'Beaufort',1200),(15,'Aussois',1500),(16,'Avoriaz',1800),(17,'La Montagne',2500),(18,'Le Sud',200),(19,'La Plage',10),(20,'Alpe d Huez',1860),(21,'Areches',1200),(22,'Beaufort',1200),(23,'Aussois',1500),(24,'Avoriaz',1800),(25,'La Montagne',2500),(26,'Le Sud',200),(27,'La Plage',10),(28,'Alpe d Huez',1860),(29,'Areches',1200),(30,'Beaufort',1200),(31,'Aussois',1500),(32,'Avoriaz',1800),(33,'La Montagne',2500),(34,'Le Sud',200),(35,'La Plage',10),(36,'Alpe d Huez',1860),(37,'Areches',1200),(38,'Beaufort',1200),(39,'Aussois',1500),(40,'Avoriaz',1800);
/*!40000 ALTER TABLE `stations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-28 17:28:14
