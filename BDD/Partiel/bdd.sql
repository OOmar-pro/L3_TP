CREATE TABLE produit
(
    NP NUMBER NOT NULL UNIQUE,
    NomP VARCHAR2(20),
    Couleur VARCHAR2(20) NOT NULL,
    -- Couleur VARCHAR2(20) NOT NULL CHECK(minuscule),
    Poids NUMBER(6,3) CHECK(Poids > 0),
    UNIQUE(NomP,Couleur)
);

CREATE TABLE usine
(
    NU NUMBER NOT NULL UNIQUE,
    NomU VARCHAR2(20),
    Ville VARCHAR2(20) NOT NULL,
    UNIQUE(NomP,Couleur)
);
