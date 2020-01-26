DROP TABLE "REALISATEUR" CASCADE CONSTRAINT;
DROP TABLE "REALISE" CASCADE CONSTRAINT;
DROP TABLE "NOTE" CASCADE CONSTRAINT;
DROP TABLE "UTILISATEUR" CASCADE CONSTRAINT;
DROP TABLE "JOUE" CASCADE CONSTRAINT;
DROP TABLE "EPISODE" CASCADE CONSTRAINT;
DROP TABLE "DE" CASCADE CONSTRAINT;
DROP TABLE "GENRE" CASCADE CONSTRAINT;
DROP TABLE "ACTEUR" CASCADE CONSTRAINT;
DROP TABLE "SAISON" CASCADE CONSTRAINT;
DROP TABLE "SERIE" CASCADE CONSTRAINT;
DROP TABLE "CREE" CASCADE CONSTRAINT;
DROP TABLE "CREATEUR" CASCADE CONSTRAINT;
DROP TABLE "MESSAGE" CASCADE CONSTRAINT;
DROP TABLE "PRODUIT" CASCADE CONSTRAINT;
DROP TABLE "PRODUCTEUR" CASCADE CONSTRAINT;


CREATE TABLE "REALISATEUR" (
  "idrealisateur" NUMBER NOT NULL,
  "nom" VARCHAR2(42) NOT NULL,
  "prenom" VARCHAR2(42) NOT NULL,
  PRIMARY KEY ("idrealisateur")
);

CREATE TABLE "REALISE" (
  "idrealisateur" NUMBER NOT NULL ,
  "idepisode" NUMBER NOT NULL ,
  PRIMARY KEY ("idrealisateur", "idepisode")
);

CREATE TABLE "NOTE" (
  "idnote" NUMBER NOT NULL ,
  "idserie" NUMBER DEFAULT NULL,
  "idepisode" NUMBER DEFAULT NULL,
  "note" NUMBER NOT NULL CHECK ("note" <= 10 AND "note" >= 0),
  "commentaire" VARCHAR(255),
  "date" DATE DEFAULT SYSDATE,
  "idutilisateur" NUMBER NOT NULL,
  PRIMARY KEY ("idnote"),
  CONSTRAINT check_idserie_idepisode CHECK ("idepisode" IS NOT NULL OR "idserie" IS NOT NULL) 
);

CREATE TABLE "UTILISATEUR" (
  "idutilisateur" NUMBER NOT NULL ,
  "pseudo" VARCHAR(42),
  "dateinscrit" DATE DEFAULT SYSDATE,
  "age" NUMBER,
  "sexe" VARCHAR2(20) CHECK("sexe" IN ('HOMME','FEMME')),
  PRIMARY KEY ("idutilisateur")
);

CREATE TABLE "JOUE" (
  "idepisode" NUMBER NOT NULL ,
  "idacteur" NUMBER NOT NULL ,
  PRIMARY KEY ("idepisode", "idacteur")
);

CREATE TABLE "EPISODE" (
  "idepisode" NUMBER NOT NULL ,
  "titre" VARCHAR(255),
  "duree" NUMBER,
  "datepremdiff" DATE,
  "resume" VARCHAR(255),
  PRIMARY KEY ("idepisode")
);

-- CREATE TABLE "NOTE_DE" (
--   "idnote" NUMBER NOT NULL ,
--   "idserie" NUMBER ,
--   "idepisode" NUMBER ,
--   PRIMARY KEY ("idnote", "idserie", "idepisode")
-- );

CREATE TABLE "DE" (
  "idserie" NUMBER NOT NULL ,
  "idgenre" NUMBER NOT NULL ,
  PRIMARY KEY ("idgenre", "idserie")
);

CREATE TABLE "GENRE" (
  "idgenre" NUMBER NOT NULL ,
  "libgenre" VARCHAR(100),
  PRIMARY KEY ("idgenre")
);

CREATE TABLE "ACTEUR" (
  "idacteur" NUMBER NOT NULL ,
  "nom" VARCHAR(42),
  "prenom" VARCHAR(42),
  PRIMARY KEY ("idacteur")
);

CREATE TABLE "SAISON" (
  "idserie" NUMBER NOT NULL ,
  "idepisode" NUMBER NOT NULL ,
  "numsaison" NUMBER,
  PRIMARY KEY ("idserie", "idepisode")
);

CREATE TABLE "SERIE" (
  "idserie" NUMBER NOT NULL ,
  "titre" VARCHAR(42),
  "annee" DATE,
  "pays" VARCHAR(42),
  "datecreation" DATE,
  PRIMARY KEY ("idserie")
);

CREATE TABLE "CREE" (
  "idserie" NUMBER NOT NULL ,
  "idcreateur" NUMBER NOT NULL ,
  PRIMARY KEY ("idserie", "idcreateur")
);

CREATE TABLE "CREATEUR" (
  "idcreateur" NUMBER NOT NULL ,
  "nom" VARCHAR(42),
  "prenom" VARCHAR(42),
  "idproducteur" NUMBER DEFAULT NULL,
  PRIMARY KEY ("idcreateur")
);

CREATE TABLE "MESSAGE" (
  "idmsg" NUMBER NOT NULL ,
  "idexp" NUMBER NOT NULL ,
  "iddest" NUMBER NOT NULL ,
  "idreponse" NUMBER DEFAULT NULL,
  "titre" VARCHAR(42),
  "message" VARCHAR(255),
  "idserie" NUMBER DEFAULT NULL,
  PRIMARY KEY ("idmsg")
);

CREATE TABLE "PRODUIT" (
  "idserie" NUMBER NOT NULL,
  "idproducteur" NUMBER NOT NULL,
  PRIMARY KEY ("idserie", "idproducteur")
);

CREATE TABLE "PRODUCTEUR" (
  "idproducteur" NUMBER NOT NULL ,
  "nom" VARCHAR(42),
  "prenom" VARCHAR(42),
  PRIMARY KEY ("idproducteur")
);

ALTER TABLE "REALISE" ADD FOREIGN KEY ("idepisode") REFERENCES "EPISODE" ("idepisode");
ALTER TABLE "REALISE" ADD FOREIGN KEY ("idrealisateur") REFERENCES "REALISATEUR" ("idrealisateur");
ALTER TABLE "NOTE" ADD FOREIGN KEY ("idutilisateur") REFERENCES "UTILISATEUR" ("idutilisateur");
ALTER TABLE "NOTE" ADD FOREIGN KEY ("idepisode") REFERENCES "EPISODE" ("idepisode");
ALTER TABLE "NOTE" ADD FOREIGN KEY ("idserie") REFERENCES "SERIE" ("idserie");
ALTER TABLE "JOUE" ADD FOREIGN KEY ("idacteur") REFERENCES "ACTEUR" ("idacteur");
ALTER TABLE "JOUE" ADD FOREIGN KEY ("idepisode") REFERENCES "EPISODE" ("idepisode");
ALTER TABLE "DE" ADD FOREIGN KEY ("idserie") REFERENCES "SERIE" ("idserie");
ALTER TABLE "DE" ADD FOREIGN KEY ("idgenre") REFERENCES "GENRE" ("idgenre");
ALTER TABLE "SAISON" ADD FOREIGN KEY ("idepisode") REFERENCES "EPISODE" ("idepisode");
ALTER TABLE "SAISON" ADD FOREIGN KEY ("idserie") REFERENCES "SERIE" ("idserie");
ALTER TABLE "CREE" ADD FOREIGN KEY ("idcreateur") REFERENCES "CREATEUR" ("idcreateur");
ALTER TABLE "CREE" ADD FOREIGN KEY ("idserie") REFERENCES "SERIE" ("idserie");
ALTER TABLE "CREATEUR" ADD FOREIGN KEY ("idproducteur") REFERENCES "PRODUCTEUR" ("idproducteur");
ALTER TABLE "MESSAGE" ADD FOREIGN KEY ("idserie") REFERENCES "SERIE" ("idserie");
ALTER TABLE "PRODUIT" ADD FOREIGN KEY ("idproducteur") REFERENCES "PRODUCTEUR" ("idproducteur");
ALTER TABLE "PRODUIT" ADD FOREIGN KEY ("idserie") REFERENCES "SERIE" ("idserie");