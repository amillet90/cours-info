DROP TABLE IF EXISTS produit;

CREATE TABLE produit ( 
  id_produit INT AUTO_INCREMENT
  , nom VARCHAR(20)
  , categorie VARCHAR(20)
  , code VARCHAR(5)  -- INT(5) ZEROFILL
  , prix NUMERIC(7,2)   -- 99999,99 
  , date_achat DATE 
  , PRIMARY KEY (id_produit) 
);

DESCRIBE produit;

INSERT INTO produit
VALUES (NULL, 'Pommes', 'Fruits', '01002', '4.5', '2021-10-1');
INSERT INTO produit(nom,categorie,code,prix,date_achat)
VALUES ('Poires', 'Fruits', '01008', '4', '2021-09-30');
INSERT INTO produit
VALUES (NULL, 'Potiron', 'Légumes', '02018', '3', '2021-9-21');
INSERT INTO produit
VALUES (NULL, 'haricots', 'Légumes', '02089', '18', '2021-10-2');
INSERT INTO produit
VALUES (NULL, 'Cerises', 'Fruits', '01068', '15', '2021-09-30');
INSERT INTO produit (nom,categorie,code,prix,date_achat)
VALUES ('Patates', 'Légumes', '02068', '3', '2021-09-30');

SELECT * FROM  produit;

--  2 solutions pour le 2.1 question 2
SELECT  produit.nom
FROM  produit 
WHERE  produit.prix < 10;
-- comme on utilise une seule table =>
SELECT  nom
FROM  produit 
WHERE  prix < 10;

--  2 solutions pour le 2.1 question 3
SELECT  produit.nom , produit.prix
FROM  produit 
WHERE 
 produit.prix <= 15 
 AND produit.prix >=10;

SELECT  produit.nom AS nomProduit
FROM  produit 
WHERE  
produit.prix BETWEEN 10 AND 15;


SELECT nom
FROM  produit
WHERE categorie = 'Légumes';

DELETE FROM produit WHERE id_produit=2;

SELECT * FROM  produit;
INSERT INTO produit VALUES (NULL,'Poires', 'Fruits', '01008', '4', '2021-09-30');
SELECT * FROM  produit;

UPDATE produit SET  
nom='Pommes de Terre',  prix = '3.5'
WHERE  id_produit = 6;

UPDATE produit SET  prix=prix+1
WHERE  id_produit=5;

--  l'instruction suivante n est pas facile sansdate_achat documentation sur internet ! ;)
UPDATE  produit SET date_achat = 
DATE_ADD(date_achat,INTERVAL 7 DAY) WHERE  id_produit=5;
UPDATE  produit SET date_achat =
 DATE_SUB(date_achat,INTERVAL 1 WEEK) WHERE  id_produit=5;
SELECT * FROM produit WHERE id_produit=5;
UPDATE produit SET date_achat = date_achat + INTERVAL 1 week
WHERE id_produit=5;
SELECT * FROM produit WHERE id_produit=5;
SELECT * FROM  produit;


-- Modifier la structure de la table

ALTER TABLE  produit ADD quantite DECIMAL(7,2) AFTER code;
ALTER TABLE  produit DROP COLUMN code;
ALTER TABLE  produit CHANGE prix  prix NUMERIC(19,4);

-- Réfléxion sur le contenu des colonnes  -------------------------------- VALIDATION

-- Inlay Hints (disable)


INSERT INTO produit (id_produit, nom, categorie, code, prix, date_achat)
VALUES (NULL, 'tomate', 'Légume',5, '4', '2021-09-30');
INSERT INTO produit (id_produit, nom, categorie, code, prix, date_achat)
VALUES (NULL, 'Salade verte', 'legumes',5, '1.5', '2021-09-30');
INSERT INTO produit (nom,categorie,prix,quantite, date_achat)
VALUES ('radis noir', 'LEGUMES', 5, '3.5', '2021-09-30');

SELECT nom, categorie
FROM  produit
WHERE categorie = 'Légumes';

ALTER TABLE produit ADD categorie_id INT AFTER categorie;
SELECT * FROM  produit;

-- ---

-- affichage de la table dans le TP
-- SELECT id_produit,
-- nom,
-- categorie,
-- code,
-- Replace(prix,'.',',') AS prix,
-- CONCAT(DAY(date_achat),'/',
--  MONTH(date_achat),
--  '/',YEAR(date_achat)) AS Date_achat_Produit
--
-- FROM  produit;





