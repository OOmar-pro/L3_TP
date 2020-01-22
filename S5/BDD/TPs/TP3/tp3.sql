-- Ajoute la chaine 'bla' a la fin de la chaine 'Soleil'
-- jusqu'a atteindre une chaine de longueur 17
SELECT RPAD('Soleil',17,'bla') "RPAD exemple" FROM DUAL;

-- Ajoute la chaine '*.' a la fin de la chaine 'Master 2 EID'
-- jusqu'a atteindre une chaine de longueur 15
SELECT LPAD('Master 2 EID',15,'*.') "LPAD exemple" FROM DUAL;

-- Renvoie la sous chaine commencant au 6e caractere et de longueur 3
SELECT SUBSTR('DESS EID',6,3) "SUBSTR exemple" FROM DUAL;

-- Renvoie la sous chaine commencant au -5e caractere (5e en partant de la fin)
-- et de longueur 4
SELECT SUBSTR('ABCDEFGHIJ',-5,4) "SUBSTR exemple" FROM DUAL;

-- Renvoie la date et l'heure actuelle sous le format demande
SELECT TO_CHAR(SYSDATE, 'MM-DD-YYYY HH24:MI:SS') "Now" FROM DUAL;

-- Renvoie la longueur de la chaine de caracteres en parametre
SELECT LENGTH('WEB WAREHOUSE') "Longueur en caractères" FROM DUAL;

-- Renvoie le premier parametre en l'arrondissant a un chiffre apres la virgule
SELECT ROUND(17.0958,1) "ROUND exemple" FROM DUAL;

-- Renvoie le premier parametre en l'arrondissant a deux chiffre apres la virgule
SELECT ROUND(17.58,2) "ROUND exemple" FROM DUAL;

-- Renvoie le nombre en enlevant les decimales a partir de la 1ere decimale
SELECT TRUNC(1958.0917,1) "TRUNC exemple" FROM DUAL;

-- Renvoie le nombre en enlevant les decimales a partir de la 2e decimale
SELECT TRUNC(1958.0917,2) "TRUNC exemple" FROM DUAL;

-- 
SELECT ROUND( TO_DATE('17-SEP-2009'), 'YEAR') "New Year" FROM DUAL;

-- Renvoie la date du jour
SELECT SYSDATE FROM DUAL;

-- Extrait l'annee de la valeur de SYSDATE
SELECT EXTRACT(YEAR FROM SYSDATE) FROM DUAL;

-- Renvoie la date actuelle en y ajoutant 7 mois
SELECT ADD_MONTHS(SYSDATE,7) FROM DUAL;

-- 
SELECT TRUNC(MONTHS_BETWEEN(SYSDATE, TO_DATE('19-JUN-2001'))) AS AGEBB FROM DUAL;

-- Convertir la valeur de SYSDATE en string puis la convertie en nombre
SELECT TO_NUMBER(TO_CHAR(SYSDATE, 'YYYY')) FROM DUAL;

ALTER SESSION SET NLS_DATE_FORMAT = 'DD-MM-YYYY';
