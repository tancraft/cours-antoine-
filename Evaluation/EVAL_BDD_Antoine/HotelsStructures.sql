#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------
DROP DATABASE IF EXISTS baseStation;

CREATE DATABASE baseStation;

USE baseStation;

#------------------------------------------------------------
# Table: stations
#------------------------------------------------------------

CREATE TABLE baseStation.stations(
        idStation  Int  Auto_increment  NOT NULL PRIMARY KEY,
        nomStation Varchar (50) NOT NULL ,
        altitude   Int NOT NULL

)ENGINE=InnoDB, CHARSET = UTF8;


#------------------------------------------------------------
# Table: hotels
#------------------------------------------------------------

CREATE TABLE baseStation.hotels(
        idHotel         INT  Auto_increment  NOT NULL PRIMARY KEY ,
        nomHotel        Varchar (50) NOT NULL ,
        categorie       INT (5) NOT NULL ,
        adresseHotel    Varchar (50) NOT NULL ,
        villeHotel      Varchar (50) NOT NULL ,
        idStation       Int NOT NULL

)ENGINE=InnoDB, CHARSET = UTF8;


#------------------------------------------------------------
# Table: clients
#------------------------------------------------------------

CREATE TABLE baseStation.clients(
        idClient         Int  Auto_increment  NOT NULL PRIMARY KEY ,
        nomClient        Varchar (50) NOT NULL ,
        prenomClient     Varchar (50) NOT NULL ,
        adresseClient    Varchar (50) NOT NULL ,
        villeClient      Varchar (50) NOT NULL

)ENGINE=InnoDB, CHARSET = UTF8;


#------------------------------------------------------------
# Table: chambres
#------------------------------------------------------------

CREATE TABLE baseStation.chambres(
        idChambre     Int  Auto_increment  NOT NULL PRIMARY KEY ,
        numeroChambre Int NOT NULL ,
        capacite      Int NOT NULL ,
        typeChambre   Int NOT NULL ,
        idHotel       Int NOT NULL

)ENGINE=InnoDB, CHARSET = UTF8;


#------------------------------------------------------------
# Table: reservations
#------------------------------------------------------------

CREATE TABLE baseStation.reservations(
        idReservation      Int  Auto_increment  NOT NULL PRIMARY KEY ,
        dateReservation Date NOT NULL ,
        dateDebut       Date NOT NULL ,
        dateFin         Date NOT NULL ,
        prixLocation    Double NOT NULL ,
        arrhes          Double NOT NULL,
        idChambre       Int NOT NULL ,
        idClient        Int NOT NULL 

)ENGINE=InnoDB, CHARSET = UTF8;

#------------------------------------------------------------
# foreign keys
#------------------------------------------------------------

ALTER TABLE baseStation.hotels ADD CONSTRAINT FK_hotels_stations FOREIGN KEY (idStation) REFERENCES stations(idStation);
ALTER TABLE baseStation.chambres ADD CONSTRAINT FK_chambres_hotels FOREIGN KEY (idHotel) REFERENCES hotels(idHotel);
ALTER TABLE baseStation.reservations ADD CONSTRAINT FK_reservations_chambres FOREIGN KEY (idChambre) REFERENCES chambres(idChambre);
ALTER TABLE baseStation.reservations ADD CONSTRAINT FK_reservations_clients FOREIGN KEY (idClient) REFERENCES clients(idClient);