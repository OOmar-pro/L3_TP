@creation.sql
@insertion.sql

-- [1]Quel est la liste des séries de la base?

SELECT "titre" FROM SERIE;  

-- [2]Combien de pays différents ont créé des sériesdans notre base ?

SELECT DISTINCT "pays" FROM SERIE;

-- [3]Quels sont les titres des séries originaires du Japon, triés par titre?

SELECT "titre" FROM SERIE WHERE "pays" = 'Japon' ORDER BY "titre" ASC;

-- [4]Combien y a-t-ilde séries originaires de chaque pays?

SELECT "pays", count("idserie") NbSerie FROM SERIE GROUP BY "pays";

-- [5]Combien de séries ont été créés entre 2001 et 2015?

SELECT count("idserie") NbSerie FROM SERIE WHERE EXTRACT(YEAR FROM "annee") BETWEEN '2001' AND '2015';

-- [6]Quelles séries sont à la fois du genre «Comédie» et «Science-Fiction»?

SELECT "titre" FROM SERIE s JOIN DE d ON s."idserie" = d."idserie" WHERE d."idgenre" = 1
INTERSECT
SELECT "titre" FROM SERIE s JOIN DE d ON s."idserie" = d."idserie" WHERE d."idgenre" = 3;

-- [7]Quels sont les séries produites par «Spielberg», affichés par date décroissantes?

SELECT "titre" FROM SERIE s JOIN PRODUIT p ON s."idserie" = p."idserie" WHERE p."idproducteur" = 1 ORDER BY "annee" DESC; 

-- [8]Afficher les séries Américaines par ordre de nombre de saisons croissant.

--SELECT s."titre", count(sa."numsaison") FROM SERIE s JOIN SAISON sa ON s."idserie" = sa."idserie" WHERE "pays" = 'Etats-Unis' GROUP BY s."titre" ORDER BY count(sa."numsaison") ASC;

SELECT "titre", count("numsaison") FROM (SELECT DISTINCT "titre", "numsaison" FROM SERIE JOIN SAISON ON SERIE."idserie" = SAISON."idserie" ) GROUP BY "titre", "numsaison";

-- [9]Quelle série a le plus d’épisodes?


-- [10]La série «Big Bang Theory» est-elle plus appréciée des hommes ou des femmes?


-- [11]Affichez les séries qui ont une note moyenne inférieure à 5, classé par note.


-- [12]Pour chaque série, afficher le commentaire correspondant à la meilleure note.


-- [13]Affichez les séries qui ont une note moyenne sur leurs épisodes supérieure à 8.


-- [14]Afficher lenombre moyen d’épisodes des séries avec l’acteur«Bryan Cranston».


-- [15]Quels acteurs ont réalisé des épisodesde série ?


-- [16]Quels acteurs ont joué ensemble dans plus de 80% des épisodes d’une série?


-- [17]Quels acteurs ont joué dans tous les épisodes de la série «Breaking Bad»?


-- [18]Quels utilisateurs ont donné une note à chaque série de la base?


-- [19]Pour chaque message, affichez son niveau et si possible le titre de la série en question.


-- [20]Les messages initiés par «Azrod95» génèrent combien de réponses en moyenne?


