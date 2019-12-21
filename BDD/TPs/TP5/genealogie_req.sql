-- INIT --
@genealogie.sql
cl scr
-- END INIT --

-- Liste des enfants d'Elizabeth II (Nom, DateNaissance)
SELECT Nom, DateNaissance FROM genealogie WHERE Mere = 3;

-- La mère du prince William(Nom, DateNaissance)
SELECT Nom, DateNaissance FROM genealogie WHERE numPer = (SELECT Mere FROM genealogie WHERE numPer = 11);

-- Les parents d'Elizabeth II (Nom, DateNaissance).
SELECT Nom,DateNaissance FROM genealogie WHERE numPer IN (SELECT Pere, Mere FROM genealogie WHERE numPer = 2);

-- Les frères et sœurs du Prince Charles(Nom, DateNaissance)


-- Le nom des individus, le nom de leur père (ou NULL) et le nom de leur mère (ou NULL) (Nom, Nompere, Nommere).


-- La  liste  des  individus  et  le  nombre  de  leurs  enfants  étant  dans  la  base  de données (Nom,NbEnfants).







-- DROP --
DROP TABLE genealogie CASCADE CONSTRAINTS;
-- END DROP --