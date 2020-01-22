-- INIT --
@genealogie.sql
cl scr
-- END INIT --

-- Liste des enfants d'Elizabeth II (Nom, DateNaissance)
SELECT Nom, DateNaissance FROM genealogie WHERE Mere = 3;

-- La mère du prince William(Nom, DateNaissance)
SELECT Nom, DateNaissance FROM genealogie WHERE numPer = (SELECT Mere FROM genealogie WHERE numPer = 11);

-- Les parents d'Elizabeth II (Nom, DateNaissance).
SELECT Nom,DateNaissance FROM genealogie WHERE numPer IN (SELECT Mere FROM genealogie WHERE numPer = 3 UNION SELECT Pere FROM genealogie WHERE numPer = 3);

-- Les frères et sœurs du Prince Charles(Nom, DateNaissance)
SELECT Nom, DateNaissance FROM genealogie WHERE numPer != 6 AND (Pere = (SELECT Pere FROM genealogie WHERE numPer = 6) OR Mere = (SELECT Mere FROM genealogie WHERE numPer = 6) );

-- Le nom des individus, le nom de leur père (ou NULL) et le nom de leur mère (ou NULL) (Nom, Nompere, Nommere).
SELECT t1.nom, t2.nom as Nompere, t3.nom as Nommere FROM (genealogie t1  LEFT JOIN genealogie t2 ON t1.Pere = t2.numPer ) LEFT JOIN genealogie t3 ON t1.Mere = t3.numPer;

-- La  liste  des  individus  et  le  nombre  de  leurs  enfants  étant  dans  la  base  de données (Nom,NbEnfants).
SELECT t1.nom, count(t2.numPer) from genealogie t1 LEFT JOIN genealogie t2 ON t1.numPer = t2.Pere OR t1.numPer = t2.Mere GROUP BY t1.nom;

-- DROP --
DROP TABLE genealogie CASCADE CONSTRAINTS;
-- END DROP --