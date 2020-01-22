INSERT INTO SERIE VALUES(1, 'The Witcher', '01/01/2019', 'Etats-Unis', '22/12/19');
INSERT INTO SERIE VALUES(2, 'Oz', '01/01/1997', 'Etats-Unis', '12/07/1997');
INSERT INTO SERIE VALUES(3, 'Le Bureau Des Legendes', '01/01/2015', 'France', '24/04/2015');
INSERT INTO SERIE VALUES(4, 'Platane', '01/01/2011', 'France', '05/09/2011');
INSERT INTO SERIE VALUES(5, 'Mr. Robot', '01/01/2015', 'Etats-Unis', '24/06/2015');
INSERT INTO SERIE VALUES(6, 'Vinland Saga', '01/01/2019', 'Japon', '08/07/2019');
INSERT INTO SERIE VALUES(7, 'Cowboy Bebop', '01/01/1998', 'Japon', '03/04/1998');
INSERT INTO SERIE VALUES(8, 'Rick et Morty', '01/01/2013', 'Etats-Unis', '02/12/2013');
INSERT INTO SERIE VALUES(9, 'Futurama', '01/01/1999', 'Etats-Unis', '28/03/2013');
INSERT INTO SERIE VALUES(10, 'The Pacific', '01/01/2010', 'Etats-Unis', '14/03/2010');
INSERT INTO SERIE VALUES(11, 'Animaniacs', '01/01/1993', 'Etats-Unis', '13/09/1993');
INSERT INTO SERIE VALUES(12, 'Big Bang Theory', '01/01/2007', 'Etats-Unis', '24/09/2007');


INSERT INTO GENRE VALUES(1, 'Comédie');
INSERT INTO GENRE VALUES(2, 'Drame');
INSERT INTO GENRE VALUES(3, 'Science-Fiction');
INSERT INTO GENRE VALUES(4, 'Fantasy');
INSERT INTO GENRE VALUES(5, 'Medieval');
INSERT INTO GENRE VALUES(6, 'Espionnage');
INSERT INTO GENRE VALUES(7, 'Sitcom');
INSERT INTO GENRE VALUES(8, 'Thriller');
INSERT INTO GENRE VALUES(9, 'Historique');
INSERT INTO GENRE VALUES(10, 'Action');
INSERT INTO GENRE VALUES(11, 'Aventure');
INSERT INTO GENRE VALUES(12, 'Animation');
INSERT INTO GENRE VALUES(13, 'Guerre');
INSERT INTO GENRE VALUES(14, 'Biopic');


INSERT INTO DE VALUES(1, 4);
INSERT INTO DE VALUES(1, 5);

INSERT INTO DE VALUES(2, 2);

INSERT INTO DE VALUES(3, 6);

INSERT INTO DE VALUES(4, 1);
INSERT INTO DE VALUES(4, 7);

INSERT INTO DE VALUES(5, 2);
INSERT INTO DE VALUES(5, 8);

INSERT INTO DE VALUES(6, 9);
INSERT INTO DE VALUES(6, 11);
INSERT INTO DE VALUES(6, 12);

INSERT INTO DE VALUES(7, 10);
INSERT INTO DE VALUES(7, 11);
INSERT INTO DE VALUES(7, 12);

INSERT INTO DE VALUES(8, 1);
INSERT INTO DE VALUES(8, 3);
INSERT INTO DE VALUES(8, 12);

INSERT INTO DE VALUES(9, 1);
INSERT INTO DE VALUES(9, 3);
INSERT INTO DE VALUES(9, 12);

INSERT INTO DE VALUES(10, 13);
INSERT INTO DE VALUES(10, 14);

INSERT INTO DE VALUES(11, 12);

INSERT INTO DE VALUES(12, 1);
INSERT INTO DE VALUES(12, 7);


INSERT INTO PRODUCTEUR VALUES(1, 'Spielberg', 'Steven');
INSERT INTO PRODUCTEUR VALUES(2, 'Daniel', 'Sean');
INSERT INTO PRODUCTEUR VALUES(3, 'Productions', 'HBO');
INSERT INTO PRODUCTEUR VALUES(4, 'Rochant', 'Eric');
INSERT INTO PRODUCTEUR VALUES(5, 'Productions', '4 mecs en Baskets');
INSERT INTO PRODUCTEUR VALUES(6, 'Productions', 'Universal');
INSERT INTO PRODUCTEUR VALUES(7, 'Engine', 'Twin');
INSERT INTO PRODUCTEUR VALUES(8, 'Minami', 'Masahiko');
INSERT INTO PRODUCTEUR VALUES(9, 'Ikeguchi', 'Kazuhiko');
INSERT INTO PRODUCTEUR VALUES(10, 'Michels', 'Pete');
INSERT INTO PRODUCTEUR VALUES(11, 'Archer', 'Wes');
INSERT INTO PRODUCTEUR VALUES(12, 'Groening', 'Matt');
INSERT INTO PRODUCTEUR VALUES(13, 'Lorre', 'Chuck');

INSERT INTO PRODUIT VALUES(1, 2);
INSERT INTO PRODUIT VALUES(2, 3);
INSERT INTO PRODUIT VALUES(3, 4);
INSERT INTO PRODUIT VALUES(4, 5);
INSERT INTO PRODUIT VALUES(5, 6);
INSERT INTO PRODUIT VALUES(6, 7);
INSERT INTO PRODUIT VALUES(7, 8);
INSERT INTO PRODUIT VALUES(7, 9);
INSERT INTO PRODUIT VALUES(8, 10);
INSERT INTO PRODUIT VALUES(8, 11);
INSERT INTO PRODUIT VALUES(9, 12);
INSERT INTO PRODUIT VALUES(10, 1);
INSERT INTO PRODUIT VALUES(11, 1);
INSERT INTO PRODUIT VALUES(12, 13);

-- OZ --
INSERT INTO EPISODE VALUES(1,'Routine carcérale', 1518, '12/07/1997', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(2,'Visite conjugale', 1740, '13/07/1997', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(3,'Dans la confidence des Dieux', 1312, '14/07/1997', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(4,'Peine capitale', 1505, '15/07/1997', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(5,'Vivre sainement', 1612, '16/07/1997', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(6,'À ta santé', 1500, '17/07/1997', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(7,'Plan B', 1735, '18/07/1997', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(8,'Partie de dames', 1761, '19/07/1997', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');

INSERT INTO EPISODE VALUES(9,'L''Indice', 1512, '12/07/1998', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(10,'Tribus ancestrales', 1420, '13/07/1998', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(11,'De grands hommes', 1670, '14/07/1998', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(12,'Sans appel', 1790, '15/07/1998', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(13,'Histoire de famille', 1325, '16/07/1998', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(14,'Lits jumeaux', 1492, '17/07/1998', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(15,'La Ferme des animaux', 1679, '18/07/1998', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(16,'S''évader d''Oz', 1325, '19/07/1998', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');


INSERT INTO SAISON VALUES(2,1,1);
INSERT INTO SAISON VALUES(2,2,1);
INSERT INTO SAISON VALUES(2,3,1);
INSERT INTO SAISON VALUES(2,4,1);
INSERT INTO SAISON VALUES(2,5,1);
INSERT INTO SAISON VALUES(2,6,1);
INSERT INTO SAISON VALUES(2,7,1);
INSERT INTO SAISON VALUES(2,8,1);

INSERT INTO SAISON VALUES(2,9,2);
INSERT INTO SAISON VALUES(2,10,2);
INSERT INTO SAISON VALUES(2,11,2);
INSERT INTO SAISON VALUES(2,12,2);
INSERT INTO SAISON VALUES(2,13,2);
INSERT INTO SAISON VALUES(2,14,2);
INSERT INTO SAISON VALUES(2,15,2);
INSERT INTO SAISON VALUES(2,16,2);


-- PLATANE --
INSERT INTO EPISODE VALUES(17,'La fois où il a eu l''accident', 1567, '05/09/2011', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(18,'La fois où il a voulu faire un film sérieux', 1685, '05/09/2011', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(19,'La fois où il a eu l''idée de faire : La Môme 2.0 Next Generation', 1326, '05/09/2011', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(20,'La fois où Monica Bellucci a failli signer', 1850, '12/09/2011', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(21,'La fois où il aimait une Chinoise… ou une Vietnamienne', 1895, '12/09/2011', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(22,'La fois où il a voulu soigner sa mère mais trop tard', 1764, '12/09/2011', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(23,'La fois où il s''est fait arrêter par le flic… Là', 1423, '19/09/2011', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(24,'La fois où il a changé de carte de visite', 1468, '19/09/2011', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(25,'La fois où il a eu la foi dans son couple', 1385, '19/09/2011', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(26,'La fois où il était à deux doigts de conclure', 1473, '26/09/2011', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(27,'La fois où il a fait de la garde à vue à Lyon', 1863, '26/09/2011', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(28,'La fois où il était ruiné', 1739, '26/09/2011', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');


INSERT INTO EPISODE VALUES(29,'La fois où il s''est embrouillé avec un arbre', 1420, '16/09/2013', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(30,'La fois où il avait fait waou en famille', 1573, '16/09/2013', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(31,'La fois où il était desperate', 1251, '16/09/2013', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(32,'La fois où il était une véritable cocotte minute', 1365, '23/09/2013', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(33,'La fois où il a monté la tente', 1687, '23/09/2013', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(34,'La fois où il y avait du parfum dans le cockpit', 1632, '23/09/2013', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(35,'La fois où il a travaillé avec Fififty Cents', 1732, '30/09/2013', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(36,'La fois où il a cru que le signe c''était un zodiac', 1320, '30/09/2013', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(37,'La fois où il a prié Wall-e', 1510, '30/09/2013', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(38,'La fois où il a fait du quatre quatre gris', 1621, '07/10/2013', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(39,'La fois où il était découvreur de un black', 1862, '07/10/2013', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(40,'La fois où il a traversé le Styx aux îles des Saintes', 1871, '07/10/2013', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');


INSERT INTO SAISON VALUES(4,17,1);
INSERT INTO SAISON VALUES(4,18,1);
INSERT INTO SAISON VALUES(4,19,1);
INSERT INTO SAISON VALUES(4,20,1);
INSERT INTO SAISON VALUES(4,21,1);
INSERT INTO SAISON VALUES(4,22,1);
INSERT INTO SAISON VALUES(4,23,1);
INSERT INTO SAISON VALUES(4,24,1);
INSERT INTO SAISON VALUES(4,25,1);
INSERT INTO SAISON VALUES(4,26,1);
INSERT INTO SAISON VALUES(4,27,1);
INSERT INTO SAISON VALUES(4,28,1);

INSERT INTO SAISON VALUES(4,29,2);
INSERT INTO SAISON VALUES(4,30,2);
INSERT INTO SAISON VALUES(4,31,2);
INSERT INTO SAISON VALUES(4,32,2);
INSERT INTO SAISON VALUES(4,33,2);
INSERT INTO SAISON VALUES(4,34,2);
INSERT INTO SAISON VALUES(4,35,2);
INSERT INTO SAISON VALUES(4,36,2);
INSERT INTO SAISON VALUES(4,37,2);
INSERT INTO SAISON VALUES(4,38,2);
INSERT INTO SAISON VALUES(4,39,2);
INSERT INTO SAISON VALUES(4,40,2);

-- BIG BANG THEORY --

INSERT INTO EPISODE VALUES(41,'La Nouvelle Voisine des surdoués', 1420, '18/10/2008', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(42,'Des voisins encombrants ', 1573, '18/10/2008', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(43,'Le Corollaire de pattes-de-velours', 1251, '25/10/2008', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(44,'Les Poissons luminescents', 1365, '25/10/2008', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(45,'Le Postulat du hamburger', 1687, '01/11/2008', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(46,'Les Allumés d’Halloween', 1632, '01/11/2008', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(47,'Le Paradoxe du ravioli chinois', 1732, '08/11/2008', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(48,'L''Effet sauterelle', 1320, '08/11/2008', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(49,'La Polarisation Cooper-Hofstadter', 1510, '15/11/2008', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(50,'La Descente aux enfers du sujet Loobenfeld', 1621, '15/11/2008', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(51,'Alerte aux microbes', 1862, '22/11/2008', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(52,'La Dualité de Jérusalem', 1871, '22/11/2008', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(53,'La Conjecture du Batbocal', 1366, '29/11/2008', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(54,'La Machine incroyable', 1871, '29/11/2008', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(55,'La Sœur jumelle', 1871, '06/12/2008', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(56,'Réaction !', 1871, '06/12/2008', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(57,'La Rupture', 1871, '06/12/2008', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');


INSERT INTO SAISON VALUES(12,41,1);
INSERT INTO SAISON VALUES(12,42,1);
INSERT INTO SAISON VALUES(12,43,1);
INSERT INTO SAISON VALUES(12,44,1);
INSERT INTO SAISON VALUES(12,45,1);
INSERT INTO SAISON VALUES(12,46,1);
INSERT INTO SAISON VALUES(12,47,1);
INSERT INTO SAISON VALUES(12,48,1);
INSERT INTO SAISON VALUES(12,49,1);
INSERT INTO SAISON VALUES(12,50,1);
INSERT INTO SAISON VALUES(12,51,1);
INSERT INTO SAISON VALUES(12,52,1);
INSERT INTO SAISON VALUES(12,53,1);
INSERT INTO SAISON VALUES(12,54,1);
INSERT INTO SAISON VALUES(12,55,1);
INSERT INTO SAISON VALUES(12,56,1);
INSERT INTO SAISON VALUES(12,57,1);

-- UTILISATEUR --

INSERT INTO UTILISATEUR VALUES(1, 'Ldupont', SYSDATE, 20, 'HOMME');
INSERT INTO UTILISATEUR VALUES(2, 'Hdurand', SYSDATE, 65, 'FEMME');
INSERT INTO UTILISATEUR VALUES(3, 'Tbagtan', SYSDATE, 41, 'HOMME');
INSERT INTO UTILISATEUR VALUES(4, 'Dconjel', SYSDATE, 18, 'FEMME');
INSERT INTO UTILISATEUR VALUES(5, 'Ataire', SYSDATE, 32, 'FEMME');

-- NOTE --

INSERT INTO NOTE VALUES(1, 4, 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit');
