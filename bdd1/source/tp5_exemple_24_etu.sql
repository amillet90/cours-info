DROP TABLE IF EXISTS Etudiant;

CREATE TABLE Etudiant (
  idEtudiant INT AUTO_INCREMENT
  , nom VARCHAR(20)
  , adresse VARCHAR(40)
  , ville VARCHAR(20)
  , code_postal VARCHAR(5) -- ZEROFILL
  , telephone VARCHAR(10) -- INT(10) ZEROFILL
  , date_naissance DATE
  , sexe VARCHAR(1)          
  , boursier VARCHAR(1)  
  , groupe_id INT
  , semestre_id INT
  , note_ue1 NUMERIC(4,2)   -- NUMERIC = DECIMAL (alias)
  , note_ue2 DECIMAL(4,2)
  , PRIMARY KEY(idEtudiant)
);
-- Il est possible de remplacer  pour le champ sexe VARCHAR(1) par ENUM('F','H')
-- Il est possible de remplacer  pour le champ boursier VARCHAR(1) par ENUM('F','H')
-- le type NUMERIC est un alias dy type DECIMAL (c'est la même chose)

-- version 2024

INSERT INTO Etudiant (idEtudiant, nom, adresse, ville, code_postal, telephone, date_naissance, sexe, boursier, groupe_id, semestre_id, note_ue1, note_ue2) VALUES
(1, 'BERNARD', '1 rue sous bois', 'Belfort', '90000', '0384545401', '2006-01-01', 'F', 'N', 1, 1, '11.50', '10.50'),
(19, 'CHAVEAUX', '5 rue du chasseur', 'Strasbourg', '68000', '0384545419', '2006-01-01', 'H', 'N', 2, 2, '10.50', '9.50'),
(20, 'PRETTOT', '8 rue vilapogo', 'Belfort', '90000', '0384545420', '2006-07-12', 'H', 'O', 2, 2, '12.50', '8.50'),
(7, 'RIOT', '67 rue pasteur', 'Montbeliard', '25200', '0384545407', '2006-06-06', 'H', 'N', 2, 1, '13.50', '12.50'),
(8, 'BOISSENIN', '1 rue sous bois', 'Belfort', '90000', '0384545408', '2006-08-09', 'H', 'O', 2, 1, '15.5', '16.50'),
(2, 'PEQUIGNOT', '2 rue de la liberation', 'Valdoie', '90300', '0384545402', '2005-06-06', 'H', 'O', 1, 1, '17.50', '9.50'),
(3, 'ZILLIOX', '7 rue du verger', 'Bavilliers', '90120', '0384545403', '2005-01-01', 'H', 'N', 1, 1, '11.50','9.25'),
(4, 'MONNIER', '3 rue du boulanger', 'TAILLECOURT', '25400', '0384545404', '2005-02-06', 'H', 'O', 1, 1, '9.50', '15.5'),
(5, 'BRISCHOUX', '5 rue du chasseur', 'Belfort', '90000', '0384545405', '2005-05-25', 'H', 'N', 2, 1, '10', '9.50'),
(6, 'DUVAL', '8 rue vilapogo', 'Bavilliers', '90120', '0384545406', '2005-03-11', 'H', 'O', 2, 1, '13.50', '8.50'),
   (10, 'FAIVRE', '7 rue des vergers  de rioz', 'Valdoie', '90300', '0384545410', '2005-01-05', 'H', 'O', 3, 1, '8.50', '12.50'),
(17, 'DELANOE', '7 rue du verger', 'Valdoie', '90300', '0384545417', '2005-01-01', 'H', 'N', 1, 2, '12.50', '14.50'),
(18, 'BONVALOT', '3 rue du boulanger', 'Belfort', '90000', '0384545418', '2005-01-01', 'H', 'O', 1, 2, '10', '11.50'),
(21, 'COULON', '67 rue pasteur', 'Valdoie', '90300', '0384545421', '2005-01-01', 'H', 'N', 2, 2, '17', '6.5'),
(23, 'KENDE', '2 rue de la liberation', 'Bavilliers', '90120', '0384545423', '2005-05-31', 'H', 'N', 3, 2, '15', '7.5'),
(24, 'KLEIN', '7 rue du verger', 'Montbeliard', '25200', '0384545424', '2005-01-01', 'H', 'N', 3, 2, '13', '15'),
(25, 'VALZER', '3 rue du boulanger', 'Valdoie', '90300', '0384545425', '2005-01-06', 'H', 'O', 3, 2, '11', '10'),
(26, 'PY', '5 rue du chasseur', NULL, '90000', '0384545426', '2005-01-10', 'F', 'N', 3, 2, '12.20', '7.90'),
(27, 'VERNET', '8 rue vilapogo', NULL, '90120', '0384545427', '2005-02-02', 'H', 'O', 4, 3, '10.30', '11.85'),
(28, 'BAILLIT', '67 rue pasteur', NULL, '25200', '0384545428', '2005-01-01', 'H', 'N', 4, 3, '7.90', '15.90'),
(16, 'LUZET', '2 rue de la liberation', 'Belfort', '90000', '0384545416', '2004-01-01', 'H', 'O', 1, 2, '10.25', '9.25'),
  (22, 'VALOT', '1 rue sous bois', '', '90000', '0384545422', '2004-12-12', 'H', 'O', 2, 2, '10', '9.20'),
(29, 'DUPONT', '8 rue vilapogo', '', '90300', '0384545429', '2004-06-06', 'H', 'O', 4, 3, '13.20', '15.50'),
   (11, 'FAIVRE', '3 rue des vergers', 'Cernay', '68000', '0384545411', '2004-01-01', 'F', 'N', 3, 1, '5.6', '12.05'),
(12, 'DUCHENNE', '5 rue du chasseur', 'Belfort', '90000', '0384545412', '2004-01-01', 'F', 'O', 3, 1, '10.4', '11.3'),
(13, 'BOULANGER', '8 rue vilapogo', 'Belfort', '90000', '0384545413', '2004-01-01', 'F', 'N', 1, 2, '13', '9.20'),
   (9, 'FONTAINE-LEGIOT', '2 rue des vergers', 'Mulhouse', '68000', '0384545409', '2003-01-01', 'H', 'N', 3, 1, '11.25', '12'),
(14, 'MOREAU', '67 rue pasteur', 'Belfort', '90000', '0384545414', '2003-06-01', 'H', 'O', 1, 2, '9', '12.50'),
(15, 'RIGOULOT', '1 rue sous bois', 'Valdoie', '90300', '0384545415', '2003-12-12', 'H', 'N', 1, 2, '15', '10.50');


-- groupe_id != 2 &&  -- correct sur mysql mais pas sur ORACLE MSS
-- https://docs.oracle.com/cd/B19306_01/server.102/b14200/conditions004.htm
-- https://msdn.microsoft.com/fr-fr/library/ms189773(v=sql.120).aspx

-- requete 1 presentation
SELECT Etudiant.nom, Etudiant.adresse, Etudiant.semestre_id
FROM
	Etudiant
WHERE
	Etudiant.groupe_id =1 AND	Etudiant.ville = 'Belfort';

-- requete 1
SELECT nom, groupe_id, boursier
FROM
	Etudiant
WHERE
	groupe_id =1 AND	semestre_id=1 AND boursier = 'O';

-- requête 2

-- requête 2-1
SELECT  semestre_id , groupe_id , nom
FROM Etudiant
ORDER BY semestre_id ASC , groupe_id , nom DESC;

-- requête 2-2
SELECT nom,ville
FROM Etudiant
WHERE
    groupe_id =2
ORDER BY ville DESC , nom ASC ; -- [ASC] option

-- requête 2-3
SELECT nom, groupe_id, ville, semestre_id
FROM Etudiant
WHERE 
	(groupe_id = 1 AND semestre_id = 1 ) OR (ville = 'Belfort' AND semestre_id = 2 )
ORDER BY semestre_id, groupe_id, ville , nom DESC;

-- requête 2-4  à simplifier
SELECT nom, groupe_id, semestre_id, ville , code_postal
FROM Etudiant
WHERE 
  ( (groupe_id <> 2 AND semestre_id <> 2 AND code_postal BETWEEN 90000 AND 90999)
  || (semestre_id<> 2   && code_postal BETWEEN 90000 AND 90999) )
  AND ville != 'Belfort' AND ville !='' AND ville IS NOT NULL
ORDER BY semestre_id, groupe_id, ville ,nom;

SELECT nom, groupe_id,  semestre_id , ville, code_postal
FROM Etudiant
WHERE
   code_postal BETWEEN 90000 AND 90999 AND semestre_id <> 2 AND
   ville <> 'Belfort' AND  ville <> '' AND  ville IS NOT NULL
ORDER BY semestre_id, groupe_id, ville ,nom;

# like '90%'
#   semestre_id != 2   && code_postal BETWEEN 90000 AND 90999
#   && ville != 'Belfort' && ville !='' && ville IS NOT NULL

-- requête 2-5
SELECT nom, groupe_id,  ville, semestre_id, boursier
FROM Etudiant
WHERE
    (boursier = 'O' OR ville = 'Belfort') AND  semestre_id=2
ORDER BY groupe_id, ville , nom;

-- requête 3
-- demo requete 3-1
SELECT DISTINCT code_postal, ville
FROM Etudiant;
-- requête 3-2
-- select 'requete 3-2'  as 'requetes';
SELECT DISTINCT ville
FROM Etudiant
WHERE code_postal BETWEEN 90000 AND 90999  # like '90%'
AND ville IS NOT NULL
AND ville <> '';

-- requête 4
SELECT nom, ville
FROM Etudiant
WHERE ville IN ('strasbourg','mulhouse','cernay');

-- requête 5
SELECT nom, ville
FROM Etudiant
WHERE  ville  IS NULL
AND sexe LIKE 'H';

SELECT nom, ville
FROM Etudiant
WHERE  (ville  IS NULL  OR ville LIKE '')
AND sexe LIKE 'H';

-- requête 6 : solution avec LIKE
-- demo
SELECT nom,  ville
FROM Etudiant
WHERE  (nom LIKE 'B%' OR nom LIKE 'D%' ) 
AND  ville LIKE  '%o%'
ORDER BY nom;

-- requete 6
SELECT nom,  ville, adresse
FROM Etudiant
WHERE 
adresse LIKE  '%verger%'
AND ( ville  LIKE '%a%l%' OR ville LIKE '%er%' ) 
order by nom, ville;

-- requête 7
SELECT nom, date_naissance, groupe_id
FROM Etudiant
WHERE
-- date_naissance BETWEEN '2000-1-1' AND '2000-12-31'
YEAR(date_naissance) = 2004
AND
( sexe='H' AND (code_postal = 90000  OR code_postal = 25200) )
ORDER BY date_naissance;

