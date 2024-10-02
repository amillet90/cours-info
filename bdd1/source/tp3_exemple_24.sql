-- RAPPEL
-- se deplacer dans le bon dossier ($ cd S1_BDD)
-- ouvrir un fichier : subl TP3.sql
# mysql --user login --password=mdp --host=serveurmysql  BDD_login
-- mot de passe : jjmm (date de naissance)
# mysql> system ls
# mysql> source tp3.sql

DROP TABLE IF EXISTS etudiant;
CREATE TABLE etudiant(
	id_etu INT UNSIGNED AUTO_INCREMENT
	, nom VARCHAR(20)
	, adresse TEXT
	, code_postal VARCHAR(5)
    , telephone VARCHAR(10) -- NUMERIC(10) ZEROFILL
	, date_naissance DATE
	, PRIMARY KEY(id_etu)
);

DESCRIBE etudiant;

INSERT INTO etudiant VALUES
    (NULL, 'dupond' , 'rue de chateau', '01000', '0123456789', '1990-12-31');
INSERT INTO etudiant (nom,adresse,telephone,  date_naissance ) VALUES
    ( 'durand' , 'rue de pont', '0123456789', '1990-12-31');
INSERT INTO etudiant  VALUES 
    (NULL, 'DAVAL' , 'rue du CHATEAU','90000', '0123456789', '1990-12-31');

SELECT * FROM etudiant;

RENAME TABLE etudiant TO etudiants;
SHOW TABLES;


ALTER TABLE  etudiants ADD groupe VARCHAR(20);
DESCRIBE etudiants;
SELECT * FROM etudiants;


ALTER TABLE  etudiants ADD prenom VARCHAR(20) AFTER nom;
DESCRIBE etudiants;
SELECT * FROM etudiants;

ALTER TABLE  etudiants  DROP COLUMN groupe;
DESCRIBE etudiants;
SELECT * FROM etudiants;


ALTER TABLE  etudiants CHANGE prenom  prenoms VARCHAR(50);
DESCRIBE etudiants;
SELECT * FROM etudiants;


DROP TABLE IF EXISTS etudiant;
DROP TABLE IF EXISTS etudiants;



	
