CREATE TABLE etudiants(
    NUMERO NUMBER(4) PRIMARY KEY,
    NOM VARCHAR2(25) NOT NULL,
    PRENOM VARCHAR2(25) NOT NULL,
    SEXE CHAR(1) CHECK (SEXE IN ('F', 'M')),
    DATENAISSANCE DATE NOT NULL,
    POIDS NUMBER,
    ANNEE NUMBER
);

DESC etudiants;

-- INSERT INTO etudiants VALUES (0,'debbache', 'karim', 'M', CURRENT_DATE, '10000', '1999');
-- INSERT into etudiants values (4,'durand', 'sophie', 'F', CURRENT_DATE, '200000', '1998');

INSERT into etudiants values (71,'Traifor', 'Benoît', 'M', '10/12/1978', '77', '1');
INSERT into etudiants values (72,'Génial', 'Clément', 'M', '10/04/1978', '72', '1');
INSERT into etudiants values (73,'Paris', 'Adam', 'M', '28/06/1974', '72', '2');
INSERT into etudiants values (74,'Paris', 'Clémence', 'F', '20/09/1977', '72', NULL);
INSERT into etudiants values (69,'Saitout', 'Inès', 'F', '22/11/1969', '69', 2);
INSERT into etudiants values (55,'Serafoub', 'Izouaf', 'M', '19/09/2013', '1', 0);


-- INSERT into etudiants values (55,NULL, 'Izouaf', 'M', '19/09/2013', '1', 0);
--
-- ERREUR � la ligne 1 :
-- ORA-01400: impossible d'ins�rer NULL dans ("L3INFO_77"."ETUDIANTS"."NOM")

select * from etudiants;

DROP TABLE etudiants ;