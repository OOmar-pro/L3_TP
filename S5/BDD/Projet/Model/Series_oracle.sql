CREATE TABLE "REALISATEUR" (
  "idrealisateur" VARCHAR(42),
  "nom" VARCHAR(42),
  "prenom" VARCHAR(42),
  PRIMARY KEY ("idrealisateur")
);

CREATE TABLE "REALISE" (
  "idrealisateur" VARCHAR(42),
  "idepisode" VARCHAR(42),
  PRIMARY KEY ("idrealisateur", "idepisode")
);

CREATE TABLE "NOTE" (
  "idnote" VARCHAR(42),
  "note" VARCHAR(42),
  "commentaire" VARCHAR(42),
  "date" VARCHAR(42),
  "idutilisateur" VARCHAR(42),
  PRIMARY KEY ("idnote")
);

CREATE TABLE "UTILISATEUR" (
  "idutilisateur" VARCHAR(42),
  "pseudo" VARCHAR(42),
  "dateinscrit" VARCHAR(42),
  "age" VARCHAR(42),
  "sexe" VARCHAR(42),
  PRIMARY KEY ("idutilisateur")
);

CREATE TABLE "JOUE" (
  "idepisode" VARCHAR(42),
  "idacteur" VARCHAR(42),
  PRIMARY KEY ("idepisode", "idacteur")
);

CREATE TABLE "EPISODE" (
  "idepisode" VARCHAR(42),
  "titre" VARCHAR(42),
  "duree" VARCHAR(42),
  "datepremdiff" VARCHAR(42),
  "resume" VARCHAR(42),
  PRIMARY KEY ("idepisode")
);

CREATE TABLE "NOTE_DE" (
  "idnote" VARCHAR(42),
  "idserie" VARCHAR(42),
  "idepisode" VARCHAR(42),
  PRIMARY KEY ("idnote", "idserie", "idepisode")
);

CREATE TABLE "DE" (
  "idgenre" VARCHAR(42),
  "idserie" VARCHAR(42),
  PRIMARY KEY ("idgenre", "idserie")
);

CREATE TABLE "GENRE" (
  "idgenre" VARCHAR(42),
  "libgenre" VARCHAR(42),
  PRIMARY KEY ("idgenre")
);

CREATE TABLE "ACTEUR" (
  "idacteur" VARCHAR(42),
  "nom" VARCHAR(42),
  "prenom" VARCHAR(42),
  PRIMARY KEY ("idacteur")
);

CREATE TABLE "SAISON" (
  "idserie" VARCHAR(42),
  "idepisode" VARCHAR(42),
  "numsaison" VARCHAR(42),
  PRIMARY KEY ("idserie", "idepisode")
);

CREATE TABLE "SERIE" (
  "idserie" VARCHAR(42),
  "titre" VARCHAR(42),
  "annee" VARCHAR(42),
  "pays" VARCHAR(42),
  "datecreation" VARCHAR(42),
  PRIMARY KEY ("idserie")
);

CREATE TABLE "CREE" (
  "idserie" VARCHAR(42),
  "idcreateur" VARCHAR(42),
  PRIMARY KEY ("idserie", "idcreateur")
);

CREATE TABLE "CREATEUR" (
  "idcreateur" VARCHAR(42),
  "nom" VARCHAR(42),
  "prenom" VARCHAR(42),
  "idproducteur" VARCHAR(42),
  PRIMARY KEY ("idcreateur")
);

CREATE TABLE "MESSAGE" (
  "idmsg" VARCHAR(42),
  "idexp" VARCHAR(42),
  "iddest" VARCHAR(42),
  "idreponse" VARCHAR(42),
  "titre" VARCHAR(42),
  "message" VARCHAR(42),
  "idserie" VARCHAR(42),
  PRIMARY KEY ("idmsg")
);

CREATE TABLE "PRODUIT" (
  "idserie" VARCHAR(42),
  "idproducteur" VARCHAR(42),
  PRIMARY KEY ("idserie", "idproducteur")
);

CREATE TABLE "PRODUCTEUR" (
  "idproducteur" VARCHAR(42),
  "nom" VARCHAR(42),
  "prenom" VARCHAR(42),
  PRIMARY KEY ("idproducteur")
);

ALTER TABLE "REALISE" ADD FOREIGN KEY ("idepisode") REFERENCES "EPISODE" ("idepisode");
ALTER TABLE "REALISE" ADD FOREIGN KEY ("idrealisateur") REFERENCES "REALISATEUR" ("idrealisateur");
ALTER TABLE "NOTE" ADD FOREIGN KEY ("idutilisateur") REFERENCES "UTILISATEUR" ("idutilisateur");
ALTER TABLE "JOUE" ADD FOREIGN KEY ("idacteur") REFERENCES "ACTEUR" ("idacteur");
ALTER TABLE "JOUE" ADD FOREIGN KEY ("idepisode") REFERENCES "EPISODE" ("idepisode");
ALTER TABLE "NOTE_DE" ADD FOREIGN KEY ("idepisode") REFERENCES "EPISODE" ("idepisode");
ALTER TABLE "NOTE_DE" ADD FOREIGN KEY ("idserie") REFERENCES "SERIE" ("idserie");
ALTER TABLE "NOTE_DE" ADD FOREIGN KEY ("idnote") REFERENCES "NOTE" ("idnote");
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