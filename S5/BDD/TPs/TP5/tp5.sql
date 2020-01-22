-- INIT --
@creatcafe.sql
@insertcafe.sql
cl scr
-- END INIT --

-- Liste du contenu de chaque table de la base.
SELECT
    *
FROM
    LESTABLES;

SELECT
    *
FROM
    SERVEUR;

SELECT
    *
FROM
    CONSOMMATION;

SELECT
    *
FROM
    FACTURE;

SELECT
    *
FROM
    COMPREND;

-- Nombre de places de la table N°4 (Nbplace).
SELECT
    Nbplace
FROM
    LESTABLES
WHERE
    NumTable = 4;

-- Liste  des  consommations dont  le  prix  unitaire  est  supérieur  à  1  euro (Numcons, Libcons, Prixcons).
SELECT
    Numcons,
    Libcons
FROM
    CONSOMMATION
WHERE
    Prixcons > 1;

-- Liste des serveurs de Belfort et de Delle (Numserv, Nomserv, Villeserveur)
SELECT
    Numserveur,
    Nomserveur
FROM
    SERVEUR
WHERE
    Villeserveur = 'BELFORT'
    OR Villeserveur = 'DELLE';

-- Liste   des   factures   du   2   février   servies   par   le   serveur   52   (Numfact, Numtable).
SELECT
    Numfacture,
    NumTable
FROM
    FACTURE
WHERE
    Datefacture = '02/02/10'
    AND Numserveur = 52;

-- Liste des consommations de la facture 1203 (Numcons, Qte)
SELECT
    Numcons,
    Qte
FROM
    COMPREND
WHERE
    Numfacture = 1203;

-- Liste des consommations des factures 1200 et 1201 (sans lignes en double) (Numcons).
SELECT
    DISTINCT Numcons,
    Qte
FROM
    COMPREND
WHERE
    Numfacture = 1200
    OR Numfacture = 1201;

-- Liste des serveurs qui sont nés en 1976 (Nomserv, Datenserveur)
SELECT
    Nomserveur,
    Datenserveur
FROM
    SERVEUR
WHERE
    EXTRACT(
        YEAR
        FROM
            Datenserveur
    ) = 1976;

-- Liste des consommations de type bière (Numcons,Libcons, Prixcons).
SELECT
    Numcons,
    Libcons,
    Prixcons
FROM
    CONSOMMATION
WHERE
    Libcons LIKE '%Biere%';

-- Liste des tables servies après le 1 février.
SELECT
    NumTable,
    Datefacture
FROM
    FACTURE
WHERE
    Datefacture > '01/02/10';

-- Liste des serveurs dont le nom contient i en deuxième position (Nomserv).
SELECT
    Nomserveur
FROM
    SERVEUR
WHERE
    SUBSTR(Nomserveur, 2, 1) = 'i';

-- Liste des serveurs dont le nom commence par un P (Nomserv)
SELECT
    Nomserveur
FROM
    SERVEUR
WHERE
    SUBSTR(Nomserveur, 1, 1) = 'P';

-- Liste des serveurs par ville (Nomserv, Villeserveur).
SELECT
    Nomserveur,
    Villeserveur
FROM
    SERVEUR
ORDER BY
    Villeserveur;

-- Liste  des  consommations  classées  par  ordre  alphabétique  sur  le  libellé (Libcons, Numcons, Prixcons)
SELECT
    Numcons,
    Libcons,
    Prixcons
FROM
    CONSOMMATION
ORDER BY
    Libcons;

-- Liste   des   villes   où   habitent   des   serveurs   (sans   lignesen   double)(Villeserveur).
SELECT
    DISTINCT Villeserveur
FROM
    SERVEUR;

-- Le nombre de tables du restaurant
SELECT
    count(NumTable)
FROM
    LESTABLES;

-- Le nombre de places disponibles sur l'ensemble des tables
SELECT
    sum(Nbplace)
FROM
    LESTABLES;

-- Nombre de factures établies par chaque serveur (Numserv, Nbfacture).
SELECT
    Numserveur,
    count(Numfacture)
FROM
    FACTURE
GROUP BY
    Numserveur;

-- Nombre de factures établies chaque jour (Datefacture, Nbfacture).
SELECT
    Datefacture,
    count(Numfacture)
FROM
    FACTURE
GROUP BY
    Datefacture;

-- Liste des serveurs qui ont établi plus de 3 factures (Numserv, Nbfacture).
SELECT
    Numserveur,
    count(Numfacture)
FROM
    FACTURE
GROUP BY
    Numserveur
HAVING
    count(Numfacture) > 3;

-- Prix moyen des consommations (Prixmoyen)
SELECT
    avg(Prixcons)
FROM
    CONSOMMATION;

-- Prix moyen du café (Prixmoyen)
SELECT
    avg(Prixcons)
FROM
    CONSOMMATION
WHERE
    Libcons LIKE '%Cafe%';

-- Quantité  moyenne  consommée  pour  chaque  consommation  (Numcons, Qtemoyenne)
SELECT
    Numcons,
    avg(Qte)
FROM
    COMPREND
GROUP BY
    Numcons;

-- Nombre de serveurs par ville (Villeserveur, Nbserveur).
SELECT
    Villeserveur,
    count(Numserveur)
FROM
    SERVEUR
GROUP BY
    Villeserveur;

-- Liste  des  villes  dans  lesquelles  habitent  plus  d'un  serveur  (Villeserveur, Nbserveur).
SELECT
    Villeserveur
FROM
    SERVEUR
GROUP BY
    Villeserveur
HAVING
    count(Numserveur) > 1;

-- Nombre de types de consommations par factures (Numfacture, Nbcons).
SELECT
    Numfacture,
    count(Numcons)
FROM
    COMPREND
GROUP BY
    Numfacture;

-- Nombre  total  de  consommations  (en  comptant  la  quantité)  par  facture(Numfacture, Qtecons).
SELECT
    Numfacture,
    sum(Qte)
FROM
    COMPREND
GROUP BY
    Numfacture;

-- Nombre de factures par consommation (Numcons, Nbfactures).
SELECT
    Numcons,
    count(Numfacture)
FROM
    COMPREND
GROUP BY
    Numcons;

-- Consommations   qui   interviennent   dans   plus   de   2   factures   (Numcons, Nbfactures)
SELECT
    Numcons,
    count(Numfacture)
FROM
    COMPREND
GROUP BY
    Numcons
HAVING
    count(Numfacture) > 2;

-- Liste  des  serveurs,  triés  par  nom  de  ville  croissant,  puis  nom  de  serveur croissant
SELECT
    Numserveur,
    Nomserveur,
    Villeserveur
FROM
    serveur
ORDER BY
    Villeserveur ASC,
    Nomserveur ASC;

-- Liste  des  serveurs,  triés  par  nom  de  ville  décroissant,  puis  nom  de  serveur croissant.
SELECT
    Numserveur,
    Nomserveur,
    Villeserveur
FROM
    serveur
ORDER BY
    Villeserveur DESC,
    Nomserveur ASC;

-- Liste  des  factures   avec   leur numéro  de   table  et   le  nom  du   serveur (Numfacture, Numtable, Nomserveur).
SELECT
    Numfacture,
    Numtable,
    Nomserveur
FROM
    FACTURE NATURAL
    JOIN SERVEUR;

-- Liste  des  factures  de  la  table  5  avec  le  nom  du  serveur  (Numfacture, Nomserveur).
SELECT
    Numfacture,
    Nomserveur
FROM
    FACTURE NATURAL
    JOIN SERVEUR
WHERE
    Numtable = 5;

-- Liste des factures avec leur nom de table et le nom du serveur (Numfacture, Nomtable, Nomserveur).
SELECT
    Numfacture,
    Nomtable,
    Nomserveur
FROM
    SERVEUR NATURAL
    JOIN FACTURE NATURAL
    JOIN LESTABLES;

-- Liste des serveurs et des tables qu'ils ont servies ordonnés selon le nom du serveur (pas de ligne double) (Nomserveur, Nomtable).
SELECT
    DISTINCT Nomserveur,
    Nomtable
FROM
    SERVEUR NATURAL
    JOIN FACTURE NATURAL
    JOIN LESTABLES
ORDER BY
    Nomserveur;

-- Liste des consommations de la facture 1203 avec leur nom, leur prix et leur quantité (Numcons, Libcons, Prixcons, Qte)
SELECT
    Numcons,
    Libcons,
    Prixcons,
    Qte
FROM
    FACTURE NATURAL
    JOIN COMPREND NATURAL
    JOIN CONSOMMATION
WHERE
    Numfacture = 1203;

-- Liste des consommations du premier février de la table 5 avec leur nom, leur prix et leur quantité (Numcons, Libcons, Prixcons, Qte).
SELECT
    Numcons,
    Libcons,
    Prixcons,
    Qte
FROM
    FACTURE NATURAL
    JOIN COMPREND NATURAL
    JOIN CONSOMMATION
WHERE
    Numtable = 5
    AND Datefacture = '01/02/10';

-- Liste  des  tables  et  des  numéros  de  factures  qui  leur  sont  associées. Attention, on veut voir toutes les tables mêmesi elles n'ont pas de factures.La   table   de   départ   (celle   du   FROM)   sera   LESTABLES   (Nomtable, Numfacture).
SELECT
    Nomtable,
    Numfacture
FROM
    LESTABLES
    LEFT JOIN FACTURE ON LESTABLES.Numtable = FACTURE.Numtable;

-- Même  question  que précédemment,mais  avec  FACTURE  comme  table  de départ.
SELECT
    Nomtable,
    Numfacture
FROM
    FACTURE
    RIGHT JOIN LESTABLES ON LESTABLES.Numtable = FACTURE.Numtable;

-- Liste des tables qui n'ont eu aucune factures (Numtable,Nomtable).
SELECT
    LESTABLES.Numtable,
    Nomtable
FROM
    LESTABLES
    LEFT JOIN FACTURE ON LESTABLES.Numtable = FACTURE.Numtable
WHERE
    Numfacture IS NULL;

-- Liste  des  consommations  qui  ont  déjà  été  servies  par  le  serveur  52 (Numcons, Libcons)
SELECT
    Numcons,
    Libcons
FROM
    CONSOMMATION NATURAL
    JOIN FACTURE
WHERE
    Numserveur = 52;

-- Liste des consommations qui n'ont jamais été servies (Numcons, Libcons)
SELECT
    CONSOMMATION.Numcons,
    Libcons
FROM
    CONSOMMATION
    LEFT JOIN COMPREND ON CONSOMMATION.Numcons = COMPREND.Numcons
WHERE
    COMPREND.Numcons IS NULL;

-- La  liste  des  factures  avec  leur  date  et  leur  nombre  de  consommations (prendre en compte la quantité) (Numfacture, Datefacture, Nbcons)
SELECT
    Numfacture,
    Datefacture,
    sum(Qte)
FROM
    FACTURE NATURAL
    JOIN COMPREND
GROUP BY
    Numfacture,
    Datefacture;

-- La liste des factures et le montant de leur addition (Numfacture, Prixfacture)
SELECT
    Numfacture,
    sum(Qte * Prixcons)
FROM
    FACTURE NATURAL
    JOIN COMPREND NATURAL
    JOIN CONSOMMATION
GROUP BY
    Numfacture;

-- Nombre de consommations servies par jour (Datefacture, Nbcons)
SELECT
    DateFacture,
    sum(Qte)
FROM
    COMPREND NATURAL
    JOIN FACTURE
GROUP BY
    DateFacture;

-- Montant global du chiffre d'affaire par jour (Datefacture, ca)
SELECT
    DateFacture,
    sum(Qte * Prixcons)
FROM
    CONSOMMATION NATURAL
    JOIN COMPREND NATURAL
    JOIN FACTURE
GROUP BY
    DateFacture;

-- La  liste  des  serveurs  par  nom et  leur  nombre  de  factures.Attention,  les serveursn'ayant  fait  aucune  facture  doivent  apparaître  dans  le  résultat (Nomserveur, Nbfactures)
SELECT
    Nomserveur,
    count(Numfacture)
FROM
    SERVEUR
    LEFT JOIN FACTURE ON SERVEUR.Numserveur = FACTURE.Numserveur
GROUP BY
    SERVEUR.Nomserveur;

-- La  liste  des  serveurs  par  nom  et  le  nombre  de  consommations  qu'ils  ont servies (NomServeur, Nbcons).
SELECT
    Nomserveur,
    sum(Qte)
FROM
    SERVEUR NATURAL
    JOIN FACTURE NATURAL
    JOIN COMPREND
GROUP BY
    Nomserveur;

-- La  liste des serveurs par nom et  leur  chiffre  d'affaire  (somme des additions encaissées) (Nomserveur, Ca)
SELECT
    Nomserveur,
    sum(Qte * Prixcons)
FROM
    SERVEUR NATURAL
    JOIN FACTURE NATURAL
    JOIN COMPREND NATURAL
    JOIN CONSOMMATION
GROUP BY
    Nomserveur;

-- Le   nom   des   tables   qui   ont   eu   au   moins   deux   factures   (Nomtable, Nbfactures).
SELECT
    Nomtable
FROM
    LESTABLES NATURAL
    JOIN FACTURE
GROUP BY
    Nomtable
HAVING
    count(Numfacture) > 1;

-- La  liste  complète  des  consommations  et  le  nombre  de  factures  dans lesquels elles apparaissent (Libcons, Nbfactures)
SELECT
    Libcons,
    count(Numfacture)
FROM
    CONSOMMATION
    LEFT JOIN COMPREND ON CONSOMMATION.Numcons = COMPREND.Numcons
GROUP BY
    Libcons;

-- La liste complète des tables et leur chiffre d'affaire (Nomtable, Ca)
SELECT
    Nomtable,
    sum(Prixcons * Qte)
FROM
    LESTABLES
    LEFT JOIN FACTURE NATURAL
    JOIN COMPREND NATURAL
    JOIN CONSOMMATION ON LESTABLES.Numtable = FACTURE.Numtable
GROUP BY
    Nomtable;

-- DROP --
DROP TABLE LESTABLES CASCADE CONSTRAINTS;

DROP TABLE SERVEUR CASCADE CONSTRAINTS;

DROP TABLE CONSOMMATION CASCADE CONSTRAINTS;

DROP TABLE FACTURE CASCADE CONSTRAINTS;

DROP TABLE COMPREND CASCADE CONSTRAINTS;

-- END DROP --