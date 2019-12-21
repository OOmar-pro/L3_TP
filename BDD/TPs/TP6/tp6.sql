--Tp6 requêtes avancées
--1
select nom,prenom,date_naissance from eleves;
-- On selectionne 3 colonnes de la table eleves
--2
select * from activites;
--affiche toutes les données de la table activites
--3
select nom,specialite from professeurs;
--affiche les specialite des professeurs
--4
select nom,prenom,poids from  eleves where(poids<45 and annee=1) or annee=2;
--on affiche le nom et prenom des eleves de premiere annee avec un poids inferieur à 45 et tous les etudiants de 2ème annee
--5
select nom,poids from eleves where poids between 60 and 80;
--affiche le nom des eleves dont le poids est entre 60 et 80
--6
select nom,specialite from professeurs where specialite in('poésie','sql');
-- affiche le nom des professeurs specialisé en poésie ou sql
--7
select nom from eleves where nom like 'L%';
--affiche le nom des eleves qui commence par L
--8
select nom from professeurs where specialite is null;
--les noms des professeurs qui n'ont pas de spécialité
--9
select nom,prenom,poids,annee from  eleves where poids<45 and annee=1;
--affiche tous les eleves de premiere avec un poids inferieur a 45
--10
select nom,NVL(specialite,'****') as specialite from professeurs;
--affiche les noms et specialite des professeurs est remplace une specialite vide par '****'
--11
--*******
--12
select e.nom from (ACTIVITES_PRATIQUEES ap join ACTIVITES a on (ap.NOM = a.nom and ap.NIVEAU = a.NIVEAU)) join ELEVES e on ap.num_eleve=e.num_eleve where a.equipe like'Amc Indus';
--13
--************
--14
select nom, SALAIRE_ACTUEL, (SALAIRE_ACTUEL-SALAIRE_BASE)as augmentation_mensuelle from professeurs where specialite like'sql';
--15
select nom from professeurs where salaire_actuel>((Salaire_base*125)/100);
--16
select e.nom as nom_eleve, c.nom as nom_cours,(r.points*5) as points from (cours c join resultats r on c.num_cours=r.num_cours) join eleves e on r.num_eleve=e.num_eleve where e.nom like'Tsuno';
--17
select AVG(poids) as poid_moyen from eleves where annee=1;
--18
select sum(points) as total_point from resultats where num_eleve=3;
--19
select min(r.points)  as min_point,max(r.points) as max_point from resultats r join eleves e on r.num_eleve=e.num_eleve where e.nom like 'Brisefer';
--20
select count(num_eleve) as nb_annee1_eleve from eleves where annee=1;
--21
select  avg(SALAIRE_BASE) as moy_base, avg(salaire_actuel-salaire_base) as moy_augmention,avg(salaire_actuel) as moy_actuel from professeurs where specilite like 'sql';
--22
select extract(year from DER_PROM) as derniere_promo from professeurs where nom like 'Pucette';
--23
select Num_prof,Date_entree,DER_PROM,(extract(year from DER_PROM)-extract(year from DATE_ENTREE)) as annee_ecoule from professeurs;
--24
select AVG(extract(year from sysdate)-extract(year from date_naissance)) as age_moy from eleves;
--25
select nom ,(Der_prom-Date_entree)/30 as nb_mois from professeurs where ((DER_PROM-Date_entree)/30)>50;
--26
select nom,date_naissance from eleves where******
--27
select * from eleves order by annee,nom;
--28
select e.nom as nom_eleve, c.nom as nom_cours,(r.points*5) as points from (cours c join resultats r on c.num_cours=r.num_cours) join eleves e on r.num_eleve=e.num_eleve where e.nom like'Tsuno' order by r.points desc;
--29
select e.nom, avg(r.points) as moyenne from eleves e join resultats r on e.num_eleve=r.num_eleve where annee=1 group by nom;
--30
--select***********
--31
--**********
--32
select e.nom from (ACTIVITES_PRATIQUEES ap join ACTIVITES a on (ap.NOM = a.nom and ap.NIVEAU = a.NIVEAU)) join ELEVES e on ap.num_eleve=e.num_eleve where a.equipe like'Amc Indus';
--33
--******************
--34
select nom,poids from eleves where annee=1 and poids>(select max(poids) from eleves where annee=2);
--35
select nom,poids from eleves where annee=1 and poids>(select min(poids) from eleves where annee=2);
--36
select e.nom,e.poids,e.annee from eleves e where e.poids>(select avg(e2.poids) from eleves e2 where e.annee=e2.annee);
--37
--************
