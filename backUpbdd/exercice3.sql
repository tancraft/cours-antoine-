-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : Dim 25 oct. 2020 à 17:35
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `exercice3`
--
CREATE DATABASE IF NOT EXISTS `exercice3` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `exercice3`;

-- --------------------------------------------------------

--
-- Structure de la table `avoir_note`
--

DROP TABLE IF EXISTS `avoir_note`;
CREATE TABLE IF NOT EXISTS `avoir_note` (
  `idAvoirNote` int(11) NOT NULL AUTO_INCREMENT,
  `idEtudiant` int(11) DEFAULT NULL,
  `idEpreuve` int(11) DEFAULT NULL,
  `note` int(11) DEFAULT NULL,
  PRIMARY KEY (`idAvoirNote`),
  KEY `FK_AvoirNote_Epreuves` (`idEpreuve`),
  KEY `FK_AvoirNote_Etudiants` (`idEtudiant`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `avoir_note`
--

INSERT INTO `avoir_note` (`idAvoirNote`, `idEtudiant`, `idEpreuve`, `note`) VALUES(1, 1, 1, 16);
INSERT INTO `avoir_note` (`idAvoirNote`, `idEtudiant`, `idEpreuve`, `note`) VALUES(2, 2, 1, 8);
INSERT INTO `avoir_note` (`idAvoirNote`, `idEtudiant`, `idEpreuve`, `note`) VALUES(3, 3, 1, 7);
INSERT INTO `avoir_note` (`idAvoirNote`, `idEtudiant`, `idEpreuve`, `note`) VALUES(4, 4, 1, 11);
INSERT INTO `avoir_note` (`idAvoirNote`, `idEtudiant`, `idEpreuve`, `note`) VALUES(5, 5, 1, 15);
INSERT INTO `avoir_note` (`idAvoirNote`, `idEtudiant`, `idEpreuve`, `note`) VALUES(6, 6, 1, 16);
INSERT INTO `avoir_note` (`idAvoirNote`, `idEtudiant`, `idEpreuve`, `note`) VALUES(7, 7, 1, 1);
INSERT INTO `avoir_note` (`idAvoirNote`, `idEtudiant`, `idEpreuve`, `note`) VALUES(8, 17, 1, 6);
INSERT INTO `avoir_note` (`idAvoirNote`, `idEtudiant`, `idEpreuve`, `note`) VALUES(9, 18, 1, 11);
INSERT INTO `avoir_note` (`idAvoirNote`, `idEtudiant`, `idEpreuve`, `note`) VALUES(10, 1, 2, 13);
INSERT INTO `avoir_note` (`idAvoirNote`, `idEtudiant`, `idEpreuve`, `note`) VALUES(11, 2, 2, 12);
INSERT INTO `avoir_note` (`idAvoirNote`, `idEtudiant`, `idEpreuve`, `note`) VALUES(12, 3, 2, 7);
INSERT INTO `avoir_note` (`idAvoirNote`, `idEtudiant`, `idEpreuve`, `note`) VALUES(13, 4, 2, 15);
INSERT INTO `avoir_note` (`idAvoirNote`, `idEtudiant`, `idEpreuve`, `note`) VALUES(14, 5, 2, 9);
INSERT INTO `avoir_note` (`idAvoirNote`, `idEtudiant`, `idEpreuve`, `note`) VALUES(15, 6, 2, 11);
INSERT INTO `avoir_note` (`idAvoirNote`, `idEtudiant`, `idEpreuve`, `note`) VALUES(16, 7, 2, 13);
INSERT INTO `avoir_note` (`idAvoirNote`, `idEtudiant`, `idEpreuve`, `note`) VALUES(17, 17, 2, 19);
INSERT INTO `avoir_note` (`idAvoirNote`, `idEtudiant`, `idEpreuve`, `note`) VALUES(18, 18, 2, 6);
INSERT INTO `avoir_note` (`idAvoirNote`, `idEtudiant`, `idEpreuve`, `note`) VALUES(19, 8, 3, 8);
INSERT INTO `avoir_note` (`idAvoirNote`, `idEtudiant`, `idEpreuve`, `note`) VALUES(20, 9, 3, 14);
INSERT INTO `avoir_note` (`idAvoirNote`, `idEtudiant`, `idEpreuve`, `note`) VALUES(21, 10, 3, 14);
INSERT INTO `avoir_note` (`idAvoirNote`, `idEtudiant`, `idEpreuve`, `note`) VALUES(22, 11, 3, 11);
INSERT INTO `avoir_note` (`idAvoirNote`, `idEtudiant`, `idEpreuve`, `note`) VALUES(23, 12, 3, 6);
INSERT INTO `avoir_note` (`idAvoirNote`, `idEtudiant`, `idEpreuve`, `note`) VALUES(24, 13, 3, 3);
INSERT INTO `avoir_note` (`idAvoirNote`, `idEtudiant`, `idEpreuve`, `note`) VALUES(25, 14, 3, 20);
INSERT INTO `avoir_note` (`idAvoirNote`, `idEtudiant`, `idEpreuve`, `note`) VALUES(26, 15, 3, 12);
INSERT INTO `avoir_note` (`idAvoirNote`, `idEtudiant`, `idEpreuve`, `note`) VALUES(27, 16, 3, 11);
INSERT INTO `avoir_note` (`idAvoirNote`, `idEtudiant`, `idEpreuve`, `note`) VALUES(28, 8, 4, 7);
INSERT INTO `avoir_note` (`idAvoirNote`, `idEtudiant`, `idEpreuve`, `note`) VALUES(29, 9, 4, 11);
INSERT INTO `avoir_note` (`idAvoirNote`, `idEtudiant`, `idEpreuve`, `note`) VALUES(30, 10, 4, 12);
INSERT INTO `avoir_note` (`idAvoirNote`, `idEtudiant`, `idEpreuve`, `note`) VALUES(31, 11, 4, 3);
INSERT INTO `avoir_note` (`idAvoirNote`, `idEtudiant`, `idEpreuve`, `note`) VALUES(32, 12, 4, 20);
INSERT INTO `avoir_note` (`idAvoirNote`, `idEtudiant`, `idEpreuve`, `note`) VALUES(33, 13, 4, 12);
INSERT INTO `avoir_note` (`idAvoirNote`, `idEtudiant`, `idEpreuve`, `note`) VALUES(34, 14, 4, 10);
INSERT INTO `avoir_note` (`idAvoirNote`, `idEtudiant`, `idEpreuve`, `note`) VALUES(35, 15, 4, 8);
INSERT INTO `avoir_note` (`idAvoirNote`, `idEtudiant`, `idEpreuve`, `note`) VALUES(36, 16, 4, 10);
INSERT INTO `avoir_note` (`idAvoirNote`, `idEtudiant`, `idEpreuve`, `note`) VALUES(37, 17, 4, 8);

-- --------------------------------------------------------

--
-- Structure de la table `enseignants`
--

DROP TABLE IF EXISTS `enseignants`;
CREATE TABLE IF NOT EXISTS `enseignants` (
  `idEnseignant` int(11) NOT NULL AUTO_INCREMENT,
  `nomEnseignant` varchar(20) NOT NULL,
  `prenomEnseignant` varchar(20) DEFAULT NULL,
  `fonctionEnseignant` varchar(25) DEFAULT NULL,
  `adresseEnseignant` varchar(40) DEFAULT NULL,
  `villeEnseignant` varchar(10) DEFAULT NULL,
  `codePostalEnseignant` int(11) DEFAULT NULL,
  `telephoneEnseignant` varchar(14) DEFAULT NULL,
  `dateNaissanceEnseignant` date DEFAULT NULL,
  `dateEmbaucheEnseignant` date DEFAULT NULL,
  PRIMARY KEY (`idEnseignant`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `enseignants`
--

INSERT INTO `enseignants` (`idEnseignant`, `nomEnseignant`, `prenomEnseignant`, `fonctionEnseignant`, `adresseEnseignant`, `villeEnseignant`, `codePostalEnseignant`, `telephoneEnseignant`, `dateNaissanceEnseignant`, `dateEmbaucheEnseignant`) VALUES(1, 'talon', 'isabelle', 'MAITRE DE CONFERENCES', '12,rue des lilas', 'marseille', 13000, '29-89-76-30', '1965-05-30', '1991-10-01');
INSERT INTO `enseignants` (`idEnseignant`, `nomEnseignant`, `prenomEnseignant`, `fonctionEnseignant`, `adresseEnseignant`, `villeEnseignant`, `codePostalEnseignant`, `telephoneEnseignant`, `dateNaissanceEnseignant`, `dateEmbaucheEnseignant`) VALUES(2, 'pelletier', 'séverine', 'CERTIFIE', '213,avenue de londres', 'calais', 62100, '21-54-87-61', '1975-04-21', '2014-09-01');
INSERT INTO `enseignants` (`idEnseignant`, `nomEnseignant`, `prenomEnseignant`, `fonctionEnseignant`, `adresseEnseignant`, `villeEnseignant`, `codePostalEnseignant`, `telephoneEnseignant`, `dateNaissanceEnseignant`, `dateEmbaucheEnseignant`) VALUES(3, 'roseau', 'alain', 'AGREGE', '12,allee des mimosas', 'calais', 62100, '21-65-87-43', '1960-01-02', '1991-10-01');
INSERT INTO `enseignants` (`idEnseignant`, `nomEnseignant`, `prenomEnseignant`, `fonctionEnseignant`, `adresseEnseignant`, `villeEnseignant`, `codePostalEnseignant`, `telephoneEnseignant`, `dateNaissanceEnseignant`, `dateEmbaucheEnseignant`) VALUES(4, 'preux', 'erick', 'CERTIFIE', '76,rue charles de gaulle', 'lyon', 69000, '30-87-21-54', '1969-11-09', '1995-10-01');
INSERT INTO `enseignants` (`idEnseignant`, `nomEnseignant`, `prenomEnseignant`, `fonctionEnseignant`, `adresseEnseignant`, `villeEnseignant`, `codePostalEnseignant`, `telephoneEnseignant`, `dateNaissanceEnseignant`, `dateEmbaucheEnseignant`) VALUES(5, 'roussel', 'philippe', 'MAITRE DE CONFERENCES', '43,rue des cogognes', 'lille', 59000, '28-90-86-64', '1966-01-21', '1990-10-12');
INSERT INTO `enseignants` (`idEnseignant`, `nomEnseignant`, `prenomEnseignant`, `fonctionEnseignant`, `adresseEnseignant`, `villeEnseignant`, `codePostalEnseignant`, `telephoneEnseignant`, `dateNaissanceEnseignant`, `dateEmbaucheEnseignant`) VALUES(6, 'renaud', 'leon', 'MAITRE DE CONFERENCES', '34,allee luoia', 'lille', 59000, '28-29-30-31', '1968-12-12', '1994-10-10');
INSERT INTO `enseignants` (`idEnseignant`, `nomEnseignant`, `prenomEnseignant`, `fonctionEnseignant`, `adresseEnseignant`, `villeEnseignant`, `codePostalEnseignant`, `telephoneEnseignant`, `dateNaissanceEnseignant`, `dateEmbaucheEnseignant`) VALUES(7, 'delignieres', 'benedicte', 'MAITRE DE CONFERENCES', '124,allee rouids', 'lyon', 69000, '45-87-91-03', '1964-10-13', '1991-10-01');
INSERT INTO `enseignants` (`idEnseignant`, `nomEnseignant`, `prenomEnseignant`, `fonctionEnseignant`, `adresseEnseignant`, `villeEnseignant`, `codePostalEnseignant`, `telephoneEnseignant`, `dateNaissanceEnseignant`, `dateEmbaucheEnseignant`) VALUES(8, 'robillard', 'marcel', 'AGREGE', '12,route de paris', 'lille', 59000, '28-28-39-39', '1965-12-12', '1995-10-01');
INSERT INTO `enseignants` (`idEnseignant`, `nomEnseignant`, `prenomEnseignant`, `fonctionEnseignant`, `adresseEnseignant`, `villeEnseignant`, `codePostalEnseignant`, `telephoneEnseignant`, `dateNaissanceEnseignant`, `dateEmbaucheEnseignant`) VALUES(9, 'savasta', 'sophie', 'CERTIFIE', '32,rue luois david', 'calais', 62100, '21-78-64-54', '1959-10-09', '1996-10-01');
INSERT INTO `enseignants` (`idEnseignant`, `nomEnseignant`, `prenomEnseignant`, `fonctionEnseignant`, `adresseEnseignant`, `villeEnseignant`, `codePostalEnseignant`, `telephoneEnseignant`, `dateNaissanceEnseignant`, `dateEmbaucheEnseignant`) VALUES(10, 'cayron', 'isabelle', 'AGREGE', '56,rue de majorettes', 'lille', 59000, '28-98-59-01', '1965-09-09', '1993-10-01');
INSERT INTO `enseignants` (`idEnseignant`, `nomEnseignant`, `prenomEnseignant`, `fonctionEnseignant`, `adresseEnseignant`, `villeEnseignant`, `codePostalEnseignant`, `telephoneEnseignant`, `dateNaissanceEnseignant`, `dateEmbaucheEnseignant`) VALUES(11, 'pacou', 'alain', 'AGREGE', '34,rue monsigny', 'saint omer', 62300, '21-94-63-20', '1978-12-01', '1998-10-01');

-- --------------------------------------------------------

--
-- Structure de la table `epreuves`
--

DROP TABLE IF EXISTS `epreuves`;
CREATE TABLE IF NOT EXISTS `epreuves` (
  `idEpreuve` int(11) NOT NULL AUTO_INCREMENT,
  `libelleEpreuve` varchar(20) DEFAULT NULL,
  `idEnseignantEpreuve` int(11) NOT NULL,
  `idMatiereEpreuve` int(11) NOT NULL,
  `dateEpreuve` date DEFAULT NULL,
  `CoefficientEpreuve` int(11) NOT NULL,
  `anneeEpreuve` int(11) DEFAULT NULL,
  PRIMARY KEY (`idEpreuve`),
  KEY `FK_epreuves_enseignants` (`idEnseignantEpreuve`),
  KEY `FK_epreuves_matieres` (`idMatiereEpreuve`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `epreuves`
--

INSERT INTO `epreuves` (`idEpreuve`, `libelleEpreuve`, `idEnseignantEpreuve`, `idMatiereEpreuve`, `dateEpreuve`, `CoefficientEpreuve`, `anneeEpreuve`) VALUES(1, 'interro anglais', 9, 1, '2014-09-12', 1, 1);
INSERT INTO `epreuves` (`idEpreuve`, `libelleEpreuve`, `idEnseignantEpreuve`, `idMatiereEpreuve`, `dateEpreuve`, `CoefficientEpreuve`, `anneeEpreuve`) VALUES(2, 'partiel maths', 3, 8, '2014-09-13', 3, 1);
INSERT INTO `epreuves` (`idEpreuve`, `libelleEpreuve`, `idEnseignantEpreuve`, `idMatiereEpreuve`, `dateEpreuve`, `CoefficientEpreuve`, `anneeEpreuve`) VALUES(3, 'partiel BD', 1, 2, '2014-09-18', 4, 2);
INSERT INTO `epreuves` (`idEpreuve`, `libelleEpreuve`, `idEnseignantEpreuve`, `idMatiereEpreuve`, `dateEpreuve`, `CoefficientEpreuve`, `anneeEpreuve`) VALUES(4, 'partiel UNIX', 7, 3, '2014-10-01', 3, 2);
INSERT INTO `epreuves` (`idEpreuve`, `libelleEpreuve`, `idEnseignantEpreuve`, `idMatiereEpreuve`, `dateEpreuve`, `CoefficientEpreuve`, `anneeEpreuve`) VALUES(5, 'interro BD', 1, 2, '2014-10-12', 1, 2);
INSERT INTO `epreuves` (`idEpreuve`, `libelleEpreuve`, `idEnseignantEpreuve`, `idMatiereEpreuve`, `dateEpreuve`, `CoefficientEpreuve`, `anneeEpreuve`) VALUES(6, 'interro maths', 3, 8, '2014-10-12', 4, 1);

-- --------------------------------------------------------

--
-- Structure de la table `etudiants`
--

DROP TABLE IF EXISTS `etudiants`;
CREATE TABLE IF NOT EXISTS `etudiants` (
  `idEtudiant` int(11) NOT NULL AUTO_INCREMENT,
  `nomEtudiant` varchar(20) NOT NULL,
  `prenomEtudiant` varchar(50) NOT NULL,
  `adresseEtudiant` varchar(40) DEFAULT NULL,
  `villeEtudiant` varchar(10) DEFAULT NULL,
  `codePostalEtudiant` int(11) DEFAULT NULL,
  `telephoneEtudiant` varchar(14) DEFAULT NULL,
  `dateEntreeEtudiant` date DEFAULT NULL,
  `anneeEtudiant` int(11) DEFAULT NULL,
  `remarqueEtudiant` varchar(40) DEFAULT NULL,
  `sexeEtudiant` char(1) DEFAULT NULL,
  `dateNaissanceEtudiant` date DEFAULT NULL,
  `hobby` varchar(20) DEFAULT 'sport',
  PRIMARY KEY (`idEtudiant`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `etudiants`
--

INSERT INTO `etudiants` (`idEtudiant`, `nomEtudiant`, `prenomEtudiant`, `adresseEtudiant`, `villeEtudiant`, `codePostalEtudiant`, `telephoneEtudiant`, `dateEntreeEtudiant`, `anneeEtudiant`, `remarqueEtudiant`, `sexeEtudiant`, `dateNaissanceEtudiant`, `hobby`) VALUES(1, 'roblin', 'lea', '12,bd de la liberte', 'calais', 62100, '21345678', '2014-09-01', 1, '', 'F', '1995-01-14', 'sport');
INSERT INTO `etudiants` (`idEtudiant`, `nomEtudiant`, `prenomEtudiant`, `adresseEtudiant`, `villeEtudiant`, `codePostalEtudiant`, `telephoneEtudiant`, `dateEntreeEtudiant`, `anneeEtudiant`, `remarqueEtudiant`, `sexeEtudiant`, `dateNaissanceEtudiant`, `hobby`) VALUES(2, 'macarthur', 'leon', '121,bd gambetta', 'calais', 62100, '21-30-65-09', '2014-09-01', 1, '', 'M', '1994-04-12', 'sport');
INSERT INTO `etudiants` (`idEtudiant`, `nomEtudiant`, `prenomEtudiant`, `adresseEtudiant`, `villeEtudiant`, `codePostalEtudiant`, `telephoneEtudiant`, `dateEntreeEtudiant`, `anneeEtudiant`, `remarqueEtudiant`, `sexeEtudiant`, `dateNaissanceEtudiant`, `hobby`) VALUES(3, 'minol', 'luc', '9,rue des prairies', 'boulogne', 62200, '21-30-20-10', '2014-09-01', 1, '', 'M', '1997-03-12', 'sport');
INSERT INTO `etudiants` (`idEtudiant`, `nomEtudiant`, `prenomEtudiant`, `adresseEtudiant`, `villeEtudiant`, `codePostalEtudiant`, `telephoneEtudiant`, `dateEntreeEtudiant`, `anneeEtudiant`, `remarqueEtudiant`, `sexeEtudiant`, `dateNaissanceEtudiant`, `hobby`) VALUES(4, 'bagnole', 'sophie', '12,rue des capucines', 'wimereux', 62930, '21-89-04-30', '2014-09-01', 1, '', 'F', '1996-03-21', 'sport');
INSERT INTO `etudiants` (`idEtudiant`, `nomEtudiant`, `prenomEtudiant`, `adresseEtudiant`, `villeEtudiant`, `codePostalEtudiant`, `telephoneEtudiant`, `dateEntreeEtudiant`, `anneeEtudiant`, `remarqueEtudiant`, `sexeEtudiant`, `dateNaissanceEtudiant`, `hobby`) VALUES(5, 'bury', 'marc', '67,allee ronde', 'marcq', 62300, '21-90-87-65', '2014-09-01', 1, '', 'M', '1993-02-05', 'sport');
INSERT INTO `etudiants` (`idEtudiant`, `nomEtudiant`, `prenomEtudiant`, `adresseEtudiant`, `villeEtudiant`, `codePostalEtudiant`, `telephoneEtudiant`, `dateEntreeEtudiant`, `anneeEtudiant`, `remarqueEtudiant`, `sexeEtudiant`, `dateNaissanceEtudiant`, `hobby`) VALUES(6, 'vendraux', 'marc', '5,rue de marseille', 'calais', 62100, '21-96-00-09', '2013-09-01', 1, 'a redouble sa premiere annee', 'M', '1996-01-21', 'sport');
INSERT INTO `etudiants` (`idEtudiant`, `nomEtudiant`, `prenomEtudiant`, `adresseEtudiant`, `villeEtudiant`, `codePostalEtudiant`, `telephoneEtudiant`, `dateEntreeEtudiant`, `anneeEtudiant`, `remarqueEtudiant`, `sexeEtudiant`, `dateNaissanceEtudiant`, `hobby`) VALUES(7, 'vendermaele', 'helene', '456,rue de paris', 'boulogne', 62200, '21-45-45-60', '2014-09-01', 1, '', 'F', '1995-03-30', 'sport');
INSERT INTO `etudiants` (`idEtudiant`, `nomEtudiant`, `prenomEtudiant`, `adresseEtudiant`, `villeEtudiant`, `codePostalEtudiant`, `telephoneEtudiant`, `dateEntreeEtudiant`, `anneeEtudiant`, `remarqueEtudiant`, `sexeEtudiant`, `dateNaissanceEtudiant`, `hobby`) VALUES(8, 'besson', 'loic', '3,allee carpentier', 'dunkerque', 59300, '28-90-89-78', '2014-09-01', 2, '', 'M', '1994-05-21', 'sport');
INSERT INTO `etudiants` (`idEtudiant`, `nomEtudiant`, `prenomEtudiant`, `adresseEtudiant`, `villeEtudiant`, `codePostalEtudiant`, `telephoneEtudiant`, `dateEntreeEtudiant`, `anneeEtudiant`, `remarqueEtudiant`, `sexeEtudiant`, `dateNaissanceEtudiant`, `hobby`) VALUES(9, 'godart', 'jean-paul', '123,rue de lens', 'marck', 59870, '28-09-87-65', '2013-09-01', 2, 'a double sa seconde annee', 'M', '1993-01-12', 'sport');
INSERT INTO `etudiants` (`idEtudiant`, `nomEtudiant`, `prenomEtudiant`, `adresseEtudiant`, `villeEtudiant`, `codePostalEtudiant`, `telephoneEtudiant`, `dateEntreeEtudiant`, `anneeEtudiant`, `remarqueEtudiant`, `sexeEtudiant`, `dateNaissanceEtudiant`, `hobby`) VALUES(10, 'beaux', 'marie', '1,allee des cygnes', 'dunkerque', 59100, '21-30-87-90', '2014-09-01', 2, NULL, 'F', '1996-04-12', 'sport');
INSERT INTO `etudiants` (`idEtudiant`, `nomEtudiant`, `prenomEtudiant`, `adresseEtudiant`, `villeEtudiant`, `codePostalEtudiant`, `telephoneEtudiant`, `dateEntreeEtudiant`, `anneeEtudiant`, `remarqueEtudiant`, `sexeEtudiant`, `dateNaissanceEtudiant`, `hobby`) VALUES(11, 'turini', 'elsa', '12,route de paris', 'boulogne', 62200, '21-32-47-97', '2014-09-01', 2, NULL, 'F', '1996-07-17', 'sport');
INSERT INTO `etudiants` (`idEtudiant`, `nomEtudiant`, `prenomEtudiant`, `adresseEtudiant`, `villeEtudiant`, `codePostalEtudiant`, `telephoneEtudiant`, `dateEntreeEtudiant`, `anneeEtudiant`, `remarqueEtudiant`, `sexeEtudiant`, `dateNaissanceEtudiant`, `hobby`) VALUES(12, 'torelle', 'elise', '123,vallee du denacre', 'boulogne', 62200, '21-67-86-90', '2014-09-01', 2, NULL, 'F', '1997-04-16', 'sport');
INSERT INTO `etudiants` (`idEtudiant`, `nomEtudiant`, `prenomEtudiant`, `adresseEtudiant`, `villeEtudiant`, `codePostalEtudiant`, `telephoneEtudiant`, `dateEntreeEtudiant`, `anneeEtudiant`, `remarqueEtudiant`, `sexeEtudiant`, `dateNaissanceEtudiant`, `hobby`) VALUES(13, 'pharis', 'pierre', '12,avenue foch', 'calais', 62100, '21-21-85-90', '2014-09-01', 2, NULL, 'M', '1996-03-18', 'sport');
INSERT INTO `etudiants` (`idEtudiant`, `nomEtudiant`, `prenomEtudiant`, `adresseEtudiant`, `villeEtudiant`, `codePostalEtudiant`, `telephoneEtudiant`, `dateEntreeEtudiant`, `anneeEtudiant`, `remarqueEtudiant`, `sexeEtudiant`, `dateNaissanceEtudiant`, `hobby`) VALUES(14, 'ephyre', 'luc', '12,rue de lyon', 'calais', 62100, '21-35-32-90', '2014-09-01', 2, NULL, 'M', '1995-01-21', 'sport');
INSERT INTO `etudiants` (`idEtudiant`, `nomEtudiant`, `prenomEtudiant`, `adresseEtudiant`, `villeEtudiant`, `codePostalEtudiant`, `telephoneEtudiant`, `dateEntreeEtudiant`, `anneeEtudiant`, `remarqueEtudiant`, `sexeEtudiant`, `dateNaissanceEtudiant`, `hobby`) VALUES(15, 'leclercq', 'jules', '12,allee des ravins', 'boulogne', 62200, '21-36-71-92', '2014-09-01', 2, NULL, 'M', '1994-05-19', 'sport');
INSERT INTO `etudiants` (`idEtudiant`, `nomEtudiant`, `prenomEtudiant`, `adresseEtudiant`, `villeEtudiant`, `codePostalEtudiant`, `telephoneEtudiant`, `dateEntreeEtudiant`, `anneeEtudiant`, `remarqueEtudiant`, `sexeEtudiant`, `dateNaissanceEtudiant`, `hobby`) VALUES(16, 'dupont', 'luc', '21,avenue monsigny', 'calais', 62200, '21-21-34-99', '2014-09-01', 2, NULL, 'M', '1996-11-02', 'sport');
INSERT INTO `etudiants` (`idEtudiant`, `nomEtudiant`, `prenomEtudiant`, `adresseEtudiant`, `villeEtudiant`, `codePostalEtudiant`, `telephoneEtudiant`, `dateEntreeEtudiant`, `anneeEtudiant`, `remarqueEtudiant`, `sexeEtudiant`, `dateNaissanceEtudiant`, `hobby`) VALUES(17, 'marke', 'loic', '312,route de paris', 'wimereux', 62930, '21-87-87-71', '2014-09-01', 2, NULL, 'M', '1996-11-12', 'sport');
INSERT INTO `etudiants` (`idEtudiant`, `nomEtudiant`, `prenomEtudiant`, `adresseEtudiant`, `villeEtudiant`, `codePostalEtudiant`, `telephoneEtudiant`, `dateEntreeEtudiant`, `anneeEtudiant`, `remarqueEtudiant`, `sexeEtudiant`, `dateNaissanceEtudiant`, `hobby`) VALUES(18, 'dewa', 'leon', '121,allee des eglantines', 'dunkerque', 59100, '28-30-87-90', '2014-09-01', 2, NULL, 'M', '1997-04-03', 'sport');

-- --------------------------------------------------------

--
-- Structure de la table `faire_cours`
--

DROP TABLE IF EXISTS `faire_cours`;
CREATE TABLE IF NOT EXISTS `faire_cours` (
  `idFaireCours` int(11) NOT NULL AUTO_INCREMENT,
  `idEnseignant` int(11) DEFAULT NULL,
  `idMatiere` int(11) DEFAULT NULL,
  `annee` int(11) DEFAULT NULL,
  PRIMARY KEY (`idFaireCours`),
  KEY `FK_FaireCours_Enseignants` (`idEnseignant`),
  KEY `FK_FaireCours_Matieres` (`idMatiere`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `faire_cours`
--

INSERT INTO `faire_cours` (`idFaireCours`, `idEnseignant`, `idMatiere`, `annee`) VALUES(1, 1, 2, 2);
INSERT INTO `faire_cours` (`idFaireCours`, `idEnseignant`, `idMatiere`, `annee`) VALUES(2, 1, 10, 2);
INSERT INTO `faire_cours` (`idFaireCours`, `idEnseignant`, `idMatiere`, `annee`) VALUES(3, 2, 4, 1);
INSERT INTO `faire_cours` (`idFaireCours`, `idEnseignant`, `idMatiere`, `annee`) VALUES(4, 2, 5, 1);
INSERT INTO `faire_cours` (`idFaireCours`, `idEnseignant`, `idMatiere`, `annee`) VALUES(5, 2, 11, 1);
INSERT INTO `faire_cours` (`idFaireCours`, `idEnseignant`, `idMatiere`, `annee`) VALUES(6, 2, 11, 2);
INSERT INTO `faire_cours` (`idFaireCours`, `idEnseignant`, `idMatiere`, `annee`) VALUES(7, 3, 8, 2);
INSERT INTO `faire_cours` (`idFaireCours`, `idEnseignant`, `idMatiere`, `annee`) VALUES(8, 3, 13, 1);
INSERT INTO `faire_cours` (`idFaireCours`, `idEnseignant`, `idMatiere`, `annee`) VALUES(9, 4, 14, 1);
INSERT INTO `faire_cours` (`idFaireCours`, `idEnseignant`, `idMatiere`, `annee`) VALUES(10, 5, 12, 1);
INSERT INTO `faire_cours` (`idFaireCours`, `idEnseignant`, `idMatiere`, `annee`) VALUES(11, 5, 12, 2);
INSERT INTO `faire_cours` (`idFaireCours`, `idEnseignant`, `idMatiere`, `annee`) VALUES(12, 6, 3, 2);
INSERT INTO `faire_cours` (`idFaireCours`, `idEnseignant`, `idMatiere`, `annee`) VALUES(13, 6, 3, 1);
INSERT INTO `faire_cours` (`idFaireCours`, `idEnseignant`, `idMatiere`, `annee`) VALUES(14, 6, 6, 2);
INSERT INTO `faire_cours` (`idFaireCours`, `idEnseignant`, `idMatiere`, `annee`) VALUES(15, 7, 13, 1);
INSERT INTO `faire_cours` (`idFaireCours`, `idEnseignant`, `idMatiere`, `annee`) VALUES(16, 7, 7, 2);
INSERT INTO `faire_cours` (`idFaireCours`, `idEnseignant`, `idMatiere`, `annee`) VALUES(17, 7, 3, 2);
INSERT INTO `faire_cours` (`idFaireCours`, `idEnseignant`, `idMatiere`, `annee`) VALUES(18, 8, 10, 1);
INSERT INTO `faire_cours` (`idFaireCours`, `idEnseignant`, `idMatiere`, `annee`) VALUES(19, 8, 13, 1);
INSERT INTO `faire_cours` (`idFaireCours`, `idEnseignant`, `idMatiere`, `annee`) VALUES(20, 9, 1, 1);
INSERT INTO `faire_cours` (`idFaireCours`, `idEnseignant`, `idMatiere`, `annee`) VALUES(21, 9, 1, 2);
INSERT INTO `faire_cours` (`idFaireCours`, `idEnseignant`, `idMatiere`, `annee`) VALUES(22, 10, 9, 1);
INSERT INTO `faire_cours` (`idFaireCours`, `idEnseignant`, `idMatiere`, `annee`) VALUES(23, 10, 9, 2);
INSERT INTO `faire_cours` (`idFaireCours`, `idEnseignant`, `idMatiere`, `annee`) VALUES(24, 11, 8, 1);

-- --------------------------------------------------------

--
-- Structure de la table `matieres`
--

DROP TABLE IF EXISTS `matieres`;
CREATE TABLE IF NOT EXISTS `matieres` (
  `idMatiere` int(11) NOT NULL AUTO_INCREMENT,
  `nomMatiere` varchar(15) NOT NULL,
  `idModule` int(11) DEFAULT NULL,
  `coefficientMatiere` int(11) DEFAULT NULL,
  PRIMARY KEY (`idMatiere`),
  KEY `FK_matieres_modules` (`idModule`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `matieres`
--

INSERT INTO `matieres` (`idMatiere`, `nomMatiere`, `idModule`, `coefficientMatiere`) VALUES(1, 'anglais', 4, 2);
INSERT INTO `matieres` (`idMatiere`, `nomMatiere`, `idModule`, `coefficientMatiere`) VALUES(2, 'BD', 1, 5);
INSERT INTO `matieres` (`idMatiere`, `nomMatiere`, `idModule`, `coefficientMatiere`) VALUES(3, 'UNIX', 1, 5);
INSERT INTO `matieres` (`idMatiere`, `nomMatiere`, `idModule`, `coefficientMatiere`) VALUES(4, 'access', 1, 1);
INSERT INTO `matieres` (`idMatiere`, `nomMatiere`, `idModule`, `coefficientMatiere`) VALUES(5, 'bureautique', 1, 2);
INSERT INTO `matieres` (`idMatiere`, `nomMatiere`, `idModule`, `coefficientMatiere`) VALUES(6, 'C', 1, 5);
INSERT INTO `matieres` (`idMatiere`, `nomMatiere`, `idModule`, `coefficientMatiere`) VALUES(7, 'Prog avancee', 1, 3);
INSERT INTO `matieres` (`idMatiere`, `nomMatiere`, `idModule`, `coefficientMatiere`) VALUES(8, 'mathematiques', 2, 1);
INSERT INTO `matieres` (`idMatiere`, `nomMatiere`, `idModule`, `coefficientMatiere`) VALUES(9, 'expression', 4, 2);
INSERT INTO `matieres` (`idMatiere`, `nomMatiere`, `idModule`, `coefficientMatiere`) VALUES(10, 'ACSI', 1, 7);
INSERT INTO `matieres` (`idMatiere`, `nomMatiere`, `idModule`, `coefficientMatiere`) VALUES(11, 'economie', 3, 2);
INSERT INTO `matieres` (`idMatiere`, `nomMatiere`, `idModule`, `coefficientMatiere`) VALUES(12, 'gestion', 3, 2);
INSERT INTO `matieres` (`idMatiere`, `nomMatiere`, `idModule`, `coefficientMatiere`) VALUES(13, 'algorithmique', 1, 5);
INSERT INTO `matieres` (`idMatiere`, `nomMatiere`, `idModule`, `coefficientMatiere`) VALUES(14, 'architecture', 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `modules`
--

DROP TABLE IF EXISTS `modules`;
CREATE TABLE IF NOT EXISTS `modules` (
  `idModule` int(11) NOT NULL AUTO_INCREMENT,
  `nomModule` varchar(15) NOT NULL,
  `coefficientModule` int(11) DEFAULT NULL,
  PRIMARY KEY (`idModule`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `modules`
--

INSERT INTO `modules` (`idModule`, `nomModule`, `coefficientModule`) VALUES(1, 'informatique', 15);
INSERT INTO `modules` (`idModule`, `nomModule`, `coefficientModule`) VALUES(2, 'mathematiques', 5);
INSERT INTO `modules` (`idModule`, `nomModule`, `coefficientModule`) VALUES(3, 'EOG', 5);
INSERT INTO `modules` (`idModule`, `nomModule`, `coefficientModule`) VALUES(4, 'LEC', 5);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `vue_note_etudiant`
-- (Voir ci-dessous la vue réelle)
--
DROP VIEW IF EXISTS `vue_note_etudiant`;
CREATE TABLE IF NOT EXISTS `vue_note_etudiant` (
`note` int(11)
,`prenomEtudiant` varchar(50)
,`nomEtudiant` varchar(20)
,`idAvoirNote` int(11)
,`idEtudiant` int(11)
);

-- --------------------------------------------------------

--
-- Structure de la vue `vue_note_etudiant`
--
DROP TABLE IF EXISTS `vue_note_etudiant`;

DROP VIEW IF EXISTS `vue_note_etudiant`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vue_note_etudiant`  AS  select `avoir_note`.`note` AS `note`,`etudiants`.`prenomEtudiant` AS `prenomEtudiant`,`etudiants`.`nomEtudiant` AS `nomEtudiant`,`avoir_note`.`idAvoirNote` AS `idAvoirNote`,`avoir_note`.`idEtudiant` AS `idEtudiant` from (`avoir_note` join `etudiants` on((`avoir_note`.`idEtudiant` = `etudiants`.`idEtudiant`))) ;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `avoir_note`
--
ALTER TABLE `avoir_note`
  ADD CONSTRAINT `FK_AvoirNote_Epreuves` FOREIGN KEY (`idEpreuve`) REFERENCES `epreuves` (`idEpreuve`),
  ADD CONSTRAINT `FK_AvoirNote_Etudiants` FOREIGN KEY (`idEtudiant`) REFERENCES `etudiants` (`idEtudiant`);

--
-- Contraintes pour la table `epreuves`
--
ALTER TABLE `epreuves`
  ADD CONSTRAINT `FK_epreuves_enseignants` FOREIGN KEY (`idEnseignantEpreuve`) REFERENCES `enseignants` (`idEnseignant`),
  ADD CONSTRAINT `FK_epreuves_matieres` FOREIGN KEY (`idMatiereEpreuve`) REFERENCES `matieres` (`idMatiere`);

--
-- Contraintes pour la table `faire_cours`
--
ALTER TABLE `faire_cours`
  ADD CONSTRAINT `FK_FaireCours_Enseignants` FOREIGN KEY (`idEnseignant`) REFERENCES `enseignants` (`idEnseignant`),
  ADD CONSTRAINT `FK_FaireCours_Matieres` FOREIGN KEY (`idMatiere`) REFERENCES `matieres` (`idMatiere`);

--
-- Contraintes pour la table `matieres`
--
ALTER TABLE `matieres`
  ADD CONSTRAINT `FK_matieres_modules` FOREIGN KEY (`idModule`) REFERENCES `modules` (`idModule`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
