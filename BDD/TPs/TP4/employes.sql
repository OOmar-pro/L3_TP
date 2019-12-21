cl scr --clear the screen

CREATE TABLE EMPLOYE
(
    NumEmp NUMERIC NOT NULL PRIMARY KEY,
    NomEmp VARCHAR2(20) NOT NULL CHECK (UPPER(NomEmp) = NomEmp),
    DateEmb DATE NOT NULL,
    DateSortie DATE DEFAULT NULL
);


INSERT INTO EMPLOYE VALUES(9007, 'CHEVALIER', '01/01/96', NULL);
INSERT INTO EMPLOYE VALUES(9701, 'LEROY', '17/09/97', NULL);
INSERT INTO EMPLOYE VALUES(9703, 'LAMI', '17/09/97', NULL);
INSERT INTO EMPLOYE VALUES(9801, 'SULTAN', '20/03/98', NULL);
INSERT INTO EMPLOYE VALUES(9802, 'CLEMENCE', '16/10/98', NULL);
INSERT INTO EMPLOYE VALUES(9803, 'CAVALIER', '22/11/98', NULL);
INSERT INTO EMPLOYE VALUES(9901, 'ALEXANDRE', '21/02/99', NULL);

-- Liste des employes
SELECT * FROM EMPLOYE;

-- Liste des noms de tous les employes
SELECT NomEmp FROM EMPLOYE;

-- Nom des employes embauches a partir du 1er janvier 1999
SELECT NomEmp FROM EMPLOYE WHERE DateEmb > '01/01/1999';

-- Liste des employés (Num et Nom) dont le nom commence par la lettre C
SELECT NumEmp, NomEmp FROM EMPLOYE WHERE SUBSTR(NomEmp, 0, 1) = 'C';

-- Liste des employés triés par ordre décroissant sur les noms
SELECT * FROM EMPLOYE ORDER BY NomEmp DESC;

-- Nombre d’employés embauchés chaque année
SELECT EXTRACT(YEAR FROM DateEmb), count(NumEmp) FROM EMPLOYE GROUP BY EXTRACT(YEAR FROM DateEmb);

-- Nombre  d’employés embauchés  chaque  année ayant  un  nom  de  plus  de  5 lettres
SELECT EXTRACT(YEAR FROM DateEmb), count(NumEmp) FROM EMPLOYE WHERE LENGTH(NomEmp) > 5 GROUP BY EXTRACT(YEAR FROM DateEmb);

-- Nombre  d’employés embauchés  chaque  année ayant  un  nom commençantpar L ou C, en ne gardant que les années avec au moins deux employés
SELECT EXTRACT(YEAR FROM DateEmb), count(NumEmp) FROM EMPLOYE WHERE SUBSTR(NomEmp, 0, 1) = 'L' or SUBSTR(NomEmp, 0, 1) = 'C' GROUP BY EXTRACT(YEAR FROM DateEmb) HAVING count(*) > 1;

DROP TABLE EMPLOYE;