-- MySQL dump 10.13  Distrib 5.7.31, for Win64 (x86_64)
--
-- Host: localhost    Database: voitures
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
-- Current Database: `voitures`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `voitures` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `voitures`;

--
-- Table structure for table `marques`
--

DROP TABLE IF EXISTS `marques`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marques` (
  `idMarque` int(11) NOT NULL AUTO_INCREMENT,
  `nomMarque` varchar(50) NOT NULL,
  PRIMARY KEY (`idMarque`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marques`
--

LOCK TABLES `marques` WRITE;
/*!40000 ALTER TABLE `marques` DISABLE KEYS */;
INSERT INTO `marques` VALUES (1,'Land Rover'),(2,'Chevrolet'),(3,'Mercury'),(4,'Hyundai'),(5,'Mitsubishi'),(6,'Cadillac'),(7,'GMC'),(8,'Subaru'),(9,'Buick'),(10,'Pontiac'),(11,'Studebaker'),(12,'Maserati'),(13,'MINI'),(14,'Ford'),(15,'Honda'),(16,'Dodge'),(17,'Nissan'),(18,'Kia'),(19,'Saturn'),(20,'Lotus'),(21,'Toyota'),(22,'Mazda'),(23,'Hummer'),(24,'Suzuki'),(25,'Aston Martin'),(26,'Bentley'),(27,'Isuzu'),(28,'Lexus'),(29,'Oldsmobile'),(30,'Holden'),(31,'Volvo'),(32,'BMW'),(33,'Jeep'),(34,'Mercedes-Benz'),(35,'Infiniti'),(36,'Plymouth'),(37,'Volkswagen'),(38,'Audi'),(39,'Jaguar');
/*!40000 ALTER TABLE `marques` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modeles`
--

DROP TABLE IF EXISTS `modeles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modeles` (
  `idModele` int(11) NOT NULL AUTO_INCREMENT,
  `nomModele` varchar(50) NOT NULL,
  `idMarque` int(11) NOT NULL,
  PRIMARY KEY (`idModele`),
  KEY `modeles_marques_FK` (`idMarque`),
  CONSTRAINT `modeles_marques_FK` FOREIGN KEY (`idMarque`) REFERENCES `marques` (`idMarque`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modeles`
--

LOCK TABLES `modeles` WRITE;
/*!40000 ALTER TABLE `modeles` DISABLE KEYS */;
INSERT INTO `modeles` VALUES (1,'Defender 90',1),(2,'Express 1500',2),(3,'Mystique',3),(4,'Tucson',4),(5,'Eclipse',5),(6,'Eldorado',6),(7,'Savana 1500',7),(8,'Outback',8),(9,'Riviera',9),(10,'Fiero',10),(11,'Avanti',11),(12,'430',12),(13,'Cooper',13),(14,'F450',14),(15,'Passport',15),(16,'Viper',16),(17,'Maxima',17),(18,'Sephia',18),(19,'S-Series',19),(20,'Mystique',3),(21,'Esprit',20),(22,'Fairlane',14),(23,'Sienna',21),(24,'CTS-V',6),(25,'D350 Club',16),(26,'Mazda6',22),(27,'H1',23),(28,'Xterra',17),(29,'Kizashi',24),(30,'Regal',9),(31,'Vantage',25),(32,'E250',14),(33,'Festiva',14),(34,'Brooklands',26),(35,'Axiom',27),(36,'HS',28),(37,'Alero',29),(38,'Ramcharger',16),(39,'Probe',14),(40,'Camry Hybrid',21),(41,'CTS',6),(42,'Yaris',21),(43,'SC',28),(44,'Pathfinder',17),(45,'Monaro',30),(46,'SC',28),(47,'929',22),(48,'Cavalier',2),(49,'Sidekick',24),(50,'Grand Prix',10),(51,'Durango',16),(52,'S80',31),(53,'Cougar',3),(54,'Outlander',5),(55,'Land Cruiser',21),(56,'M5',32),(57,'Grand Prix',10),(58,'Discovery Series II',1),(59,'Grand Cherokee',33),(60,'Mustang',14),(61,'Intrigue',29),(62,'Tacoma Xtra',21),(63,'CLS-Class',34),(64,'I',35),(65,'Discovery',1),(66,'Rally Wagon G3500',7),(67,'Breeze',36),(68,'Passat',37),(69,'Escape',14),(70,'Taurus',14),(71,'S4',38),(72,'Cougar',3),(73,'XK',39),(74,'Sorento',18),(75,'Ram',16),(76,'G6',10),(77,'Skylark',9),(78,'Torrent',10),(79,'Esteem',24),(80,'6000',10),(81,'Expedition EL',14),(82,'Eclipse',5),(83,'Camaro',2),(84,'Savana 2500',7),(85,'Golf',37),(86,'Equinox',2),(87,'Silverado 2500',2),(88,'Wrangler',33),(89,'Ascender',27),(90,'Caravan',16),(91,'350Z',17),(92,'Savana Cargo Van',7),(93,'F350',14),(94,'Pathfinder',17),(95,'Prizm',2),(96,'Grand Prix',10),(97,'H3T',23),(98,'Montana',10),(99,'C70',31),(100,'boboze',4);
/*!40000 ALTER TABLE `modeles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-21 17:30:11
