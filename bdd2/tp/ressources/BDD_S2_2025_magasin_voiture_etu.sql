# DROP DATABASE IF EXISTS BDD_partiel;
# CREATE DATABASE IF NOT EXISTS BDD_partiel;
# USE BDD_partiel;

DROP TABLE IF EXISTS vente_magasin, vente_client;  # depend de voiture client vendeur et vendeur
DROP TABLE IF EXISTS transfert;  # depend de magasin et voiture

DROP TABLE IF EXISTS voiture; # depend de modele
DROP TABLE IF EXISTS vendeur;  # depend de magasin

DROP TABLE IF EXISTS modele, magasin, client;

CREATE TABLE modele(
   id_modele INT AUTO_INCREMENT,
   marque VARCHAR(50),
   denomination VARCHAR(50),
   PRIMARY KEY(id_modele)
);

CREATE TABLE magasin(
   id_magasin INT AUTO_INCREMENT,
   nom_magasin VARCHAR(50),
   adresse VARCHAR(50),
   ville VARCHAR(50),
   PRIMARY KEY(id_magasin)
);

CREATE TABLE client(
   id_client INT AUTO_INCREMENT,
   nom VARCHAR(50),
   prenom VARCHAR(50),
   PRIMARY KEY(id_client)
);

CREATE TABLE vendeur(
   id_vendeur INT AUTO_INCREMENT,
   nom VARCHAR(50),
   prenom VARCHAR(50),
   id_magasin INT NOT NULL,
   PRIMARY KEY(id_vendeur),
   FOREIGN KEY(id_magasin) REFERENCES magasin(id_magasin)
);

CREATE TABLE voiture(
   id_voiture INT AUTO_INCREMENT,
   num_serie VARCHAR(50),
   couleur VARCHAR(50),
   prix_voiture DECIMAL(15,2),
   cout_voiture DECIMAL(15,2),
   id_modele INT NOT NULL,
   PRIMARY KEY(id_voiture),
   FOREIGN KEY(id_modele) REFERENCES modele(id_modele)
);

CREATE TABLE transfert(
   id_transfert INT AUTO_INCREMENT,
   date_depart DATE,
   date_arrivee VARCHAR(50),
   id_magasin INT NOT NULL,
   id_magasin_1 INT NOT NULL,
   id_voiture INT NOT NULL,
   PRIMARY KEY(Id_transfert),
   FOREIGN KEY(id_magasin) REFERENCES magasin(id_magasin),
   FOREIGN KEY(id_magasin_1) REFERENCES magasin(id_magasin),
   FOREIGN KEY(id_voiture) REFERENCES voiture(id_voiture)
);

CREATE TABLE vente_client(
   id_voiture INT,
   id_client INT,
   id_vendeur INT,
   date_vente DATE,
   prix_achat DECIMAL(15,2),
   reprise BOOLEAN,
   PRIMARY KEY(id_voiture, id_client, id_vendeur, date_vente),
   FOREIGN KEY(id_voiture) REFERENCES voiture(id_voiture),
   FOREIGN KEY(id_client) REFERENCES client(id_client),
   FOREIGN KEY(id_vendeur) REFERENCES vendeur(id_vendeur)
);



INSERT INTO modele (id_modele, marque, denomination) VALUES
(1, 'Renault', 'Clio V'),
(2, 'Peugeot', '208'),
(3, 'Volkswagen', 'Golf'),
(4, 'Toyota', 'Yaris'),
(5, 'BMW', 'Série 3'),
(6, 'Mercedes', 'Classe A');

INSERT INTO magasin (id_magasin, nom_magasin, adresse, ville) VALUES
(1, 'Auto City Centre', '12 rue de la République', 'Belfort'),
(2, 'Speed Motors', '45 avenue Foch', 'Belfort'),
(3, 'Prestige Auto', '8 rue des Entrepreneurs', 'Valdoie'),
(4, 'Auto Belfort', '15 rue de Strasbourg', 'Belfort');

INSERT INTO vendeur (id_vendeur, nom, prenom, id_magasin) VALUES
(1, 'Dupont', 'Jean', 1),
(2, 'Martin', 'Sophie', 2),
(3, 'Leroy', 'Lucas', 3),
(4, 'Moreau', 'Emma', 1),
(5,'Dubois', 'Marc', 4),
(6, 'Leclerc', 'Céline', 4),
(7, 'Fontaine', 'Julien', 4);

INSERT INTO client (id_client, nom, prenom) VALUES
(1, 'Lefebvre', 'Antoine'),
(2, 'Bernard', 'Marie'),
(3, 'Dubois', 'Pierre'),
(4, 'Girard', 'Camille'),
(5, 'Rousseau', 'Nicolas'),
(6, 'Laurent', 'Isabelle'),
(7, 'Simon', 'Thomas');

INSERT INTO voiture (num_serie, couleur, prix_voiture, cout_voiture, id_modele) VALUES
('AB-123-CD', 'Rouge', 18500.00, 15000.00, 1),
('EF-456-GH', 'Bleu', 19200.00, 15500.00, 1),
('IJ-789-KL', 'Gris', 22000.00, 18000.00, 2),
('MN-012-PQ', 'Noir', 22500.00, 18500.00, 2),
('RS-345-TU', 'Blanc', 25000.00, 20000.00, 3),
('VW-678-XY', 'Argent', 26000.00, 21000.00, 3),
('ZA-901-BC', 'Rouge', 16500.00, 13500.00, 4),
('DE-234-FG', 'Bleu', 17000.00, 14000.00, 4),
('HI-567-JK', 'Noir', 35000.00, 28000.00, 5),
('LM-890-NP', 'Blanc', 36500.00, 29000.00, 5),
('QR-123-ST', 'Gris', 30000.00, 24000.00, 6),
('UV-456-WX', 'Rouge', 31500.00, 25500.00, 6),
('YZ-789-AB', 'Vert', 19000.00, 15500.00, 1),
('CD-012-EF', 'Orange', 23000.00, 18500.00, 2),
('GH-345-IJ', 'Marron', 26500.00, 21500.00, 3),
('KL-567-MN', 'Blanc', 22000.00, 18000.00, 2),
('OP-890-QR', 'Noir', 25000.00, 20000.00, 3),
('ST-234-UV', 'Rouge', 20000.00, 16000.00, 1),
('WX-567-YZ', 'Bleu', 23000.00, 19000.00, 2),
('AB-901-CD', 'Gris', 26000.00, 21000.00, 3);



INSERT INTO transfert (date_depart, date_arrivee, id_magasin, id_magasin_1, id_voiture) VALUES
('2025-01-05', '2025-01-07', 1, 2, 1),
('2025-02-01', '2025-02-03', 2, 3, 3),
('2025-02-15', '2025-02-17', 3, 1, 5),
('2025-03-10', '2025-03-12', 1, 3, 7);

INSERT INTO vente_client (id_voiture, id_client, id_vendeur, date_vente, prix_achat, reprise) VALUES
(1, 1, 1, '2025-02-10', 16000.00, TRUE),
(3, 2, 2, '2025-02-15', 20000.00, TRUE),
(5, 3, 3, '2025-03-05', 22000.00, TRUE),
(7, 4, 4, '2025-03-20', 15000.00, TRUE),
(9, 5, 1, '2025-01-25', 32000.00, TRUE),
(11, 6, 2, '2025-02-05', 28000.00, TRUE);

INSERT INTO vente_magasin (id_voiture, id_client, id_vendeur, date_vente, prix_vente, duree_garantie) VALUES
(1, 1, 1, '2025-01-15', 18700.00, 24),
(3, 2, 2, '2025-01-22', 22200.00, 36),
(5, 3, 3, '2025-02-05', 25500.00, 24),
(7, 4, 4, '2025-02-18', 16800.00, 12),
(9, 5, 1, '2025-02-25', 35500.00, 36),
(11, 6, 2, '2025-03-10', 30500.00, 24),
(13, 7, 3, '2025-03-15', 19200.00, 12),
(2, 1, 4, '2025-01-30', 19500.00, 36),
(4, 2, 1, '2025-02-12', 22800.00, 24),
(6, 3, 2, '2025-02-20', 26300.00, 36),
(8, 4, 3, '2025-03-05', 17200.00, 12),
(10, 5, 4, '2025-03-20', 36000.00, 36),
(12, 6, 1, '2025-01-10', 31800.00, 24),
(14, 7, 2, '2025-02-28', 23500.00, 12),
(15, 1, 3, '2025-03-25', 26800.00, 36),
(16, 1, 5, '2025-04-03', 22500.00, 24),
(17, 2, 5, '2025-04-05', 25500.00, 36),
(18, 3, 6, '2025-04-06', 20500.00, 12),
(19, 4, 6, '2025-04-02', 23500.00, 24),
(20, 5, 7, '2025-04-04', 26500.00, 36),
(1, 6, 7, '2025-04-07', 19000.00, 12);

-- R1


-- +-----------------+
-- | nombre_vendeurs |
-- +-----------------+
-- |               3 |
-- +-----------------+

-- R2


-- +------------------+-------------+
-- | nom_magasin      | nb_vendeurs |
-- +------------------+-------------+
-- | Speed Motors     |           1 |
-- | Auto City Centre |           2 |
-- | Auto Belfort     |           3 |
-- +------------------+-------------+

-- requete 3



-- requete 4


-- +--------------+-----------+
-- | nom_magasin  | nb_ventes |
-- +--------------+-----------+
-- | Auto Belfort |         6 |
-- +--------------+-----------+

-- requete 5


-- +--------+
-- | nom    |
-- +--------+
-- | Moreau |
-- | Martin |
-- | Leroy  |
-- | Dupont |
-- +--------+

-- R6



-- +-------------------+
-- | modele            |
-- +-------------------+
-- | Volkswagen Golf   |
-- | Renault Clio V    |
-- | Peugeot 208       |
-- | Mercedes Classe A |
-- | BMW Série 3       |
-- +-------------------+


-- r7



-- +-------------------+
-- | modele            |
-- +-------------------+
-- | Volkswagen Golf   |
-- | Toyota Yaris      |
-- | Renault Clio V    |
-- | Peugeot 208       |
-- | Mercedes Classe A |
-- | BMW Série 3       |
-- +-------------------+

-- requete 8


-- +----------+-----------+
-- | nom      | nb_achats |
-- +----------+-----------+
-- | Lefebvre |         4 |
-- | Laurent  |         3 |
-- | Girard   |         3 |
-- | Dubois   |         3 |
-- | Bernard  |         3 |
-- | Rousseau |         3 |
-- +----------+-----------+


-- Donner le nom du vendeur qui a effectué le plus grand nombre de ventes en avril 2025.
-- +----------+---------+---------------+
-- | nom      | prenom  | nombre_ventes |
-- +----------+---------+---------------+
-- | Dubois   | Marc    |             2 |
-- | Leclerc  | Céline  |             2 |
-- | Fontaine | Julien  |             2 |
-- +----------+---------+---------------+




-- Donner la voiture qui rapporté le plus d’argent. (différence entre prix de vente et cout maximum)


-- +------------+--------+--------------+-----------+--------------+------------+----------+
-- | id_voiture | marque | denomination | num_serie | cout_voiture | prix_vente | benefice |
-- +------------+--------+--------------+-----------+--------------+------------+----------+
-- |          9 | BMW    | Série 3      | HI-567-JK |     28000.00 |   35500.00 |  7500.00 |
-- +------------+--------+--------------+-----------+--------------+------------+----------+
