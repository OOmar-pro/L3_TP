--TP3 Fonctions Oracle

select rpad('Soleil',17,'bla')"rpad exemple"from dual;
--rpad('chaine1',nombre,'chaine2') :
--remplis a droite de chaine 1 avec chaine2 jusqu'a obtenir le nombre de caractère au total
select lpad('Master 2 EID',15,'*.')"lpad exemple"from dual;
--lpad('chaine1',nombre,'chaine2') :
--remplis a gauche de chaine 1 avec chaine2 jusqu'a obtenir le nombre de caractère au total
select substr('DESS EID',6,3)"substr exemple"from dual;
--substr('chaine',nb,nb2)
--A partir de nb éme caractere de la chaine on ecrit nb2 caractere
select substr('abcdefghij',-5,4)"substr exemple"from dual;
--substr('chaine',nb,nb2)
--C'est la même fonction que la precedente mais ici nb est négatif cela permet de lire la chaine de droite à gauche
select to_char(sysdate,'mm-dd-yyyy hh24:mi:ss')"now" from dual;
--affiche la date actuelle du systeme to_char transforme sysdate en caractere et la deuxieme variable correspond au format voulu
select length('web warehouse')"longueur en caractere" from dual;
--affiche la longueur de la chaine en comptant le nombre de caractere
select round(17.0958,1)"round exemple" from dual;
--round(nb,nb2)
--round arrondis le nb avec nb2 chiffre après la virgule
select round(17.58,2)"round exemple" from dual;
--même chose que le select precedent
select trunc(1958.0917,1)"trunc exemple" from dual;
--trunc(nb,nb2)
--coupe nb sans arrondir juste devant le nb2 ème chiffre aprés la virgule
select trunc(1958.0917,2)"trunc exemple" from dual;
--comme au dessus
select round(TO_DATE('17-SEP-2009'),'YEAR')"New Year" from dual;
--ERREUR ORA-018598: caractere non numérique trouvé a la place d'un caractere numerique
select round(TO_DATE('17-09-2009'),'YEAR')"New Year" from dual;
-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
select sysdate from dual;
--affiche la date actuelle
select extract(year from sysdate) from dual;
--recupere year de sysdate si la variable existe alors elle l'affiche
select add_months(sysdate,7) from dual;
--affiche la date avec 7 mois en plus
SELECT TRUNC(MONTHS_BETWEEN(SYSDATE,TO_DATE('19-JUN-2001')))AS AGEBB FROM DUAL;
--ERREUR ORA-01858: caractere non numerique trouvé a la place d'un caractere numérique
SELECT TRUNC(MONTHS_BETWEEN(SYSDATE,TO_DATE('19-06-2001')))AS AGEBB FROM DUAL;
--affiche le nombre de mois qui sépare la date actuelle a celle qu'on a entrer
select to_number(to_char(sysdate,'YYYY')) from dual;
--to_number transforme une chaine de caractere en nombre
-------------------------------------------------------------------------
ALTER session set NLS_DATE_FORMAT = 'DD-MM-YYYY';
--modifie le format de la date dans cette session

-------------------------------------------------------------------------
drop table etudiants cascade constraints;
--1
create table etudiants(
  numero number(4) NOT NULL,
  nom varchar(25) NOT NULL,
  prenom varchar(25) NOT NULL,
  sexe char(1) check(sexe in('F','M')),
  datenaissance date not null,
  poids number,
  annee number,
  constraint pk_etudiants primary key(numero));

--2
insert into etudiants values(71,'traifor','benoit','M','10/12/1978',77,1);
insert into etudiants values(72,'genial','clement','M','10/04/1978',72,1);
insert into etudiants values(73,'paris','adam','M','28/06/1974',72,2);
insert into etudiants values(74,'parees','clemence','F','20/09/1977',72,null);
insert into etudiants values(69,'saitout','ines','F','22/11/1969',69,2);
insert into etudiants values(55,'serafoub','izouaf','M','19/09/2013',81,1);
--3
select decode(annee,1,'Premiere',2,'Seconde','Valeur differente de 1 et 2 !!') as anetude from etudiants;
--affiche la colone annee en remplacent 1 par premiere, 2 seconde et ainsi de suite selon ce qu'on a entrer
select upper(nom) from etudiants;
--affiche tous les noms de la base de données en majuscule
select lower(nom) from etudiants;
--affiche les noms en minuscule
select NVL(annee,'Valeur non renseignée') from etudiants;
select NVL(annee,'Valeur non renseignée') as an_etude from etudiants;
--ERREUR ORA-01722 : Nombre non valide
select NVL(annee,1) from etudiants;
--Le deuxieme argument est doit être un nombre nvl permet d'afficher le premier argument si celui ci est vide alors il affiche le second
select NVL(annee,2) as an_etude from etudiants;
--4
select * from etudiants;
--pas compris la question
----------------------------------------------
 --5
 
