cl scr -- clear screen

-- A FINIR APRES LE TP3

CREATE TABLE ETUDIANTS(
    NUMERO NUMBER(4) NOT NULL,
    NOM VARCHAR2(25) NOT NULL,
    PRENOM VARCHAR2(25) NOT NULL,
    SEXE CHAR(1) CHECK(SEXE IN ('F', 'M')),
    DATENAISSANCE DATE NOT NULL,
    POIDS NUMBER,
    ANNEE NUMBER,
    CONSTRAINT PK_ETUDIANTS PRIMARY KEY(NUMERO)
);

-- Moyenne des poids par sexe
SELECT avg(POIDS) FROM ETUDIANTS GROUP BY SEXE;

-- Moyenne des poids par sexe et par tranche d’âge

-- Moyenne des poids par année, par sexe et par tranche d’âge

-- Moyenne des poids par sexe, par année et par tranche d’âge