cl scr --clear the screen

CREATE TABLE POSTES
(
    NumEmp NUMERIC NOT NULL,
    Poste VARCHAR2(20) NOT NULL CHECK (Poste IN ('PRESIDENT', 'SECRETAIRE', 'DIRECTEUR')),
    Salaire NUMERIC NOT NULL,
    NumServ VARCHAR2(2),
    DateDeb DATE NOT NULL,
    DateFin DATE DEFAULT NULL,
    CONSTRAINT pk_postes PRIMARY KEY (NumEmp, Poste, DateDeb)
);


INSERT INTO POSTES VALUES(9701,'PRESIDENT', 5800,'S2','17/09/97',NULL);
INSERT INTO POSTES VALUES(9703,'SECRETAIRE', 950,'S1','17/09/97','31/12/98');
INSERT INTO POSTES VALUES(9703,'SECRETAIRE', 1200,'S1','01/01/99',NULL);
INSERT INTO POSTES VALUES(9801,'DIRECTEUR', 5300,'S1','07/07/97','31/12/98');
INSERT INTO POSTES VALUES(9801,'DIRECTEUR', 3200,'S5','20/03/98',NULL);
INSERT INTO POSTES VALUES(9802,'DIRECTEUR', 3500,'S2','16/10/98',NULL);
INSERT INTO POSTES VALUES(9803,'INGENIEUR', 2600,'S4','22/11/98',NULL);
INSERT INTO POSTES VALUES(9901,'DIRECTEUR', 3000,'S3','21/02/99',NULL);






-- Liste de tous les noms de postes
SELECT DISTINCT Poste FROM POSTES;

-- Postes occupés dont le salaire de l’employé est supérieur ou égal à 3000
SELECT DISTINCT Poste FROM POSTES WHERE Salaire >= 3000 AND DateFin IS NULL;

-- Postes   occupés,triés   par   ordre   décroissant   et   salaires   par   ordre croissant
SELECT DISTINCT NumEmp, Poste, Salaire FROM POSTES WHERE DateFin IS NULL ORDER BY Salaire ASC, Poste DESC;

-- Salaire le plus bas
SELECT min(Salaire) FROM POSTES;

-- Moyenne des salaires
SELECT avg(Salaire) FROM POSTES;

-- Moyenne des salaires pour les postes actuellement occupé
SELECT avg(Salaire) FROM POSTES WHERE DateFin IS NULL;

-- Nombre de salariés avec un salaire > 3000
SELECT DISTINCT count(NumEmp) FROM POSTES WHERE Salaire > 3000;

-- Moyenne des salaires actuels pour chaque service
SELECT NumServ, avg(Salaire) FROM POSTES GROUP BY NumServ;

-- Moyenne des salaires pour chaque poste avec au moins 2 employés
SELECT Poste, avg(Salaire) FROM POSTES GROUP BY Poste HAVING count(NumEmp) > 1;


DROP TABLE POSTES;