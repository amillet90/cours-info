DROP TABLE IF EXISTS LigneCommande;
DROP TABLE IF EXISTS Commande;
DROP TABLE IF EXISTS Client;
DROP TABLE IF EXISTS Article;
DROP TABLE IF EXISTS PanierArticle;

CREATE TABLE Client (
  idClient int(11) NOT NULL AUTO_INCREMENT,
  nom varchar(25) DEFAULT NULL,
  ville varchar(25) DEFAULT NULL,
  PRIMARY KEY (idClient)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO Client VALUES 
(1,'Mutz','Ruelisheim'),
(2,'Rato','Besancon'),
(3,'Goerig','Walheim'),
(4,'Walter','Bretten'),
(5,'PAUTOT','Belfort'),
(6,'PETIT','Belfort'),
(7,'SAINT DIZIER','Sevenans'),
(8,'SALVI','Offemont'),
(9,'TERRAT','Belfort'),
(10,'TYRODE','Valdoie'),
(11,'ALANKAYA','Bavilliers'),
(12,'DAROSEY','Essert'),
(13,'duguet','Belfort'),
(14,'ESSENBURGER','Belfort'),
(15,'JAOUEN','Sevenans'),
(16,'molin','Belfort'),
(17,'AMGHAR','Belfort'),
(18,'BOUCHAUD','Belfort'),
(19,'COTTARD','Belfort'),
(20,'LAMOTTE','Belfort'),
(21,'METTEY','Belfort'),
(22,'WOLF','Belfort'),
(23,'BISMUTH','Belfort'),
(24,'chaillet','Belfort'),
(25,'DECOCK','Belfort');

CREATE TABLE Article (
  idArticle int(11) NOT NULL AUTO_INCREMENT,
  designation varchar(50) DEFAULT NULL,
  prix decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (idArticle)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO Article VALUES (1,'Gâteaux chocolat ( pâtisserie)',5.25),(2,'gâteau fraise (pâtisserie) ',5.25),(3,'Mouchoir ( hygiène)',2.54),(4,'Coca cola ( boisson )',1.52),(5,'Salade ( légume ) ',2.00),(6,'Choux ( légume ) ',2.50),(7,'Pomme de terre ( légume ) ',1.50),(8,'Tomate ( légume ) ',1.50),(9,'Haricot ( légume ) ',6.50),(10,'Potiron ( légume ) ',3.00),(11,'Poireau ( légume ) ',1.50),(12,'Fenouil ( légume ) ',3.00),(13,'Pissenlit ( légume ) ',5.00),(14,'Petit pois ( légume ) ',6.00),(15,'Poivron ( légume ) ',3.00),(16,'Radis ( légume ) ',2.00),(17,'Pomme ( fruit ) ',3.00),(18,'Perrier ( 1L eau ) ',1.50),(19,'Vittel ( 1L eau ) ',1.00);



CREATE TABLE Commande (
  idCommande int(11) NOT NULL AUTO_INCREMENT,
  dateCommande date DEFAULT NULL,
  idClient int(11) DEFAULT NULL,
  PRIMARY KEY (idCommande),
  KEY fk_commande_client (idClient),
  CONSTRAINT fk_commande_client FOREIGN KEY (idClient) REFERENCES Client (idClient)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO Commande VALUES 
(1,'2020-04-11',3),
(2,'2020-12-11',2),
(3,'2021-01-28',4),
(4,'2020-09-19',1),
(5,'2019-04-11',3),
(6,'2020-12-11',2),
(7,'2020-03-28',4),
(8,'2020-12-09',1),
(9,'2019-04-11',3),
(10,'2020-12-11',2);


CREATE TABLE LigneCommande (
  idCommande int(11) NOT NULL,
  idArticle int(11) NOT NULL,
  quantite int(11) DEFAULT NULL,
  PRIMARY KEY (idCommande,idArticle),
  KEY fk_ligne_article (idArticle),
  CONSTRAINT fk_ligne_article FOREIGN KEY (idArticle) REFERENCES Article (idArticle),
  CONSTRAINT fk_ligne_commande FOREIGN KEY (idCommande) REFERENCES Commande (idCommande)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO LigneCommande VALUES (1,4,12),
(1,9,4),
(1,12,4),
(1,15,4),
(2,3,6),
(2,6,6),
(2,7,6),
(2,14,6),
(3,1,3),
(3,11,3),
(3,12,3),
(3,16,3),
(4,2,27),
(4,8,5),
(4,10,5),
(4,17,5),
(5,12,4),
(6,11,3),
(7,8,5),
(8,14,6)
;

CREATE TABLE PanierArticle (
  idClient int NOT NULL ,
  idArticle int NOT NULL ,
    quantite int NOT NULL ,
  PRIMARY KEY (idClient, idArticle)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO PanierArticle VALUES 
(3,11,3),
(3,16,5),
(4,19,7);


SELECT * FROM PanierArticle;
SELECT * FROM Commande;
SELECT * FROM LigneCommande;


SET @idClient=3;

-- code à rendre

SELECT * FROM PanierArticle;
SELECT * FROM Commande;
SELECT * FROM LigneCommande;

