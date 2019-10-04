CREATE TABLE ETUDIANTS
(
    NUMERO NUMBER(4) NOT NULL,
    NOM VARCHAR2(25) NOT NULL,
    PRENOM VARCHAR2(25) NOT NULL,
    SEXE CHAR(1) CHECK (SEXE IN ('F','M')),
    DATENAISSANCE DATE NOT NULL,
    POIDS NUMBER,
    ANNEE NUMBER,
    CONSTRAINT PK_ETUDIANTS PRIMARY KEY(NUMERO)
);

ttitle ‘La liste des contraintes créées, sur la table ETUDIANTS, est :’;
select constraint_name from user_constraints where table_name='ETUDIANTS';