-- SERIE --
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

INSERT INTO SERIE VALUES(13, 'Breaking Bad', '01/01/2008','Etats-Unis', '20/01/2008');
INSERT INTO SERIE VALUES(14, 'Malcolm', '01/01/2000','Etats-Unis', '09/01/2000');



-- GENRE --

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

-- DE --

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

INSERT INTO DE VALUES(13, 2);

INSERT INTO DE VALUES(14, 1);
INSERT INTO DE VALUES(14, 7);

-- PRODUCTEUR --

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

INSERT INTO PRODUCTEUR VALUES(14, 'Johnson', 'Mark');
INSERT INTO PRODUCTEUR VALUES(15, 'Bandur', 'Maggie');


-- PRODUIT --

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

INSERT INTO PRODUIT VALUES(13, 14);
INSERT INTO PRODUIT VALUES(14, 15);

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

--Breaking Bad--

INSERT INTO EPISODE VALUES(58, 'Chute libre', 2800, '20/01/2008', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(59, 'Le Choix', 2915, '20/01/2008', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(60, 'Dérapage', 2950, '20/01/2008', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(61, 'Retour au sources', 2700, '25/01/2008', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(62, 'Vivre ou survivre', 2500, '25/01/2008', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(63, 'Bluff', 2956, '25/01/2008', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');

INSERT INTO EPISODE VALUES(64, 'Traqués', 2350, '17/02/2009', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(65, 'Chasse à l homme', 2120, '17/02/2009', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(66, 'Alibi', 2911, '24/02/2009', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(67, 'Au fond du gouffre', 2856, '24/02/2009', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(68, 'Nouveau départ', 2789, '01/03/2009', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(69, 'Règlement de comptes', 1965, '01/03/2009', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');

INSERT INTO SAISON VALUES(13,58,1);
INSERT INTO SAISON VALUES(13,59,1);
INSERT INTO SAISON VALUES(13,60,1);
INSERT INTO SAISON VALUES(13,61,1);
INSERT INTO SAISON VALUES(13,62,1);
INSERT INTO SAISON VALUES(13,63,1);

INSERT INTO SAISON VALUES(13,64,2);
INSERT INTO SAISON VALUES(13,65,2);
INSERT INTO SAISON VALUES(13,66,2);
INSERT INTO SAISON VALUES(13,67,2);
INSERT INTO SAISON VALUES(13,68,2);
INSERT INTO SAISON VALUES(13,69,2);

--Malcolm--

INSERT INTO EPISODE VALUES(70, 'Je ne suis pas un monstre', 1500, '20/01/2000', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(71, 'Alerte rouge', 1156, '20/01/2000', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(72, 'Seuls à la maison', 1486, '20/01/2000', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(73, 'Honte', 1478, '25/01/2000', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(74, 'Changement de famille', 1562, '25/01/2000', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(75, 'Poquito Cabeza', 1523, '25/01/2000', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');

INSERT INTO EPISODE VALUES(76, 'Embouteillage', 1756, '20/05/2001', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(77, 'Il n y a pas d heure pour Halloween', 1454, '20/05/2001', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(78, 'Joyeux anniversaire Loïs', 1452, '01/06/2001', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(79, 'Dîner en ville', 1325, '01/06/2001', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(80, 'Faites vos jeux', 1569, '15/06/2001', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');
INSERT INTO EPISODE VALUES(81, 'Le Congrès', 1458, '15/06/2001', 'sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris');

INSERT INTO SAISON VALUES(14,70,1);
INSERT INTO SAISON VALUES(14,71,1);
INSERT INTO SAISON VALUES(14,72,1);
INSERT INTO SAISON VALUES(14,73,1);
INSERT INTO SAISON VALUES(14,74,1);
INSERT INTO SAISON VALUES(14,75,1);

INSERT INTO SAISON VALUES(14,76,2);
INSERT INTO SAISON VALUES(14,77,2);
INSERT INTO SAISON VALUES(14,78,2);
INSERT INTO SAISON VALUES(14,79,2);
INSERT INTO SAISON VALUES(14,80,2);
INSERT INTO SAISON VALUES(14,81,2);

-- UTILISATEUR --

INSERT INTO UTILISATEUR VALUES(1, 'Cleure', SYSDATE, 20, 'HOMME');
INSERT INTO UTILISATEUR VALUES(2, 'Klecaire', SYSDATE, 65, 'FEMME');
INSERT INTO UTILISATEUR VALUES(3, 'Tbagtan', SYSDATE, 41, 'HOMME');
INSERT INTO UTILISATEUR VALUES(4, 'Dconjel', SYSDATE, 18, 'FEMME');
INSERT INTO UTILISATEUR VALUES(5, 'Ataire', SYSDATE, 32, 'FEMME');
INSERT INTO UTILISATEUR VALUES(6, 'Azrod95', SYSDATE, 21, 'FEMME');


-- NOTE --

INSERT INTO NOTE VALUES(1, 1, NULL, 10, 'ipsum quia dolor sit amet, consectetur, adipisci velit', '04/06/2018', 2);
INSERT INTO NOTE VALUES(2, 3, NULL, 5, 'ipsum quia dolor sit amet, consectetur, adipisci velit', '06/12/2018', 4);
INSERT INTO NOTE VALUES(3, 12, NULL, 3, 'ipsum quia dolor sit amet, consectetur, adipisci velit', '07/11/2019', 5);
INSERT INTO NOTE VALUES(4, 12, NULL, 7, 'ipsum quia dolor sit amet, consectetur, adipisci velit', '15/10/2019', 1);
INSERT INTO NOTE VALUES(5, 12, NULL, 4, 'ipsum quia dolor sit amet, consectetur, adipisci velit', '31/07/2019', 3);
INSERT INTO NOTE VALUES(6, 12, NULL, 8, 'ipsum quia dolor sit amet, consectetur, adipisci velit', '26/01/2019', 5);
INSERT INTO NOTE VALUES(7, 12, NULL, 6, 'ipsum quia dolor sit amet, consectetur, adipisci velit', '02/03/2019', 5);
INSERT INTO NOTE VALUES(8, 12, NULL, 5, 'ipsum quia dolor sit amet, consectetur, adipisci velit', '10/06/2019', 1);
INSERT INTO NOTE VALUES(9, 4, NULL, 10, 'ipsum quia dolor sit amet, consectetur, adipisci velit', '22/05/2019', 2);
INSERT INTO NOTE VALUES(10, 3, NULL, 1, 'ipsum quia dolor sit amet, consectetur, adipisci velit', '14/01/2020', 3);
INSERT INTO NOTE VALUES(11, 12, NULL, 9, 'ipsum quia dolor sit amet, consectetur, adipisci velit', '12/01/2020', 4);
INSERT INTO NOTE VALUES(12, 12, NULL, 3, 'ipsum quia dolor sit amet, consectetur, adipisci velit', '01/01/2020', 5);
INSERT INTO NOTE VALUES(13, 2, NULL, 4, 'ipsum quia dolor sit amet, consectetur, adipisci velit', '01/01/2020', 2);

INSERT INTO NOTE VALUES(14,  NULL, 51,  10, 'ipsum quia dolor sit amet, consectetur, adipisci velit', '04/06/2018', 2);
INSERT INTO NOTE VALUES(15,  NULL, 43,  5, 'ipsum quia dolor sit amet, consectetur, adipisci velit', '06/12/2018', 4);
INSERT INTO NOTE VALUES(16,  NULL, 32, 3, 'ipsum quia dolor sit amet, consectetur, adipisci velit', '07/11/2019', 5);
INSERT INTO NOTE VALUES(17,  NULL, 22, 7, 'ipsum quia dolor sit amet, consectetur, adipisci velit', '15/10/2019', 1);
INSERT INTO NOTE VALUES(18,  NULL, 12, 4, 'ipsum quia dolor sit amet, consectetur, adipisci velit', '31/07/2019', 3);
INSERT INTO NOTE VALUES(19,  NULL, 2, 8, 'ipsum quia dolor sit amet, consectetur, adipisci velit', '26/01/2019', 5);
INSERT INTO NOTE VALUES(20,  NULL, 20, 6, 'ipsum quia dolor sit amet, consectetur, adipisci velit', '02/03/2019', 5);
INSERT INTO NOTE VALUES(21,  NULL, 12, 5, 'ipsum quia dolor sit amet, consectetur, adipisci velit', '10/06/2019', 1);
INSERT INTO NOTE VALUES(22,  NULL, 40,  10, 'ipsum quia dolor sit amet, consectetur, adipisci velit', '22/05/2019', 2);
INSERT INTO NOTE VALUES(23, NULL, 47,  1, 'ipsum quia dolor sit amet, consectetur, adipisci velit', '14/01/2020', 3);
INSERT INTO NOTE VALUES(24, NULL, 10, 9, 'ipsum quia dolor sit amet, consectetur, adipisci velit', '12/01/2020', 4);
INSERT INTO NOTE VALUES(25, NULL, 7, 3, 'ipsum quia dolor sit amet, consectetur, adipisci velit', '01/01/2020', 5);
INSERT INTO NOTE VALUES(26, NULL, 3,  4, 'ipsum quia dolor sit amet, consectetur, adipisci velit', '01/01/2020', 2);


-- ACTEUR --

INSERT INTO ACTEUR VALUES(1, 'Cranston', 'Bryan');
INSERT INTO ACTEUR VALUES(2, 'Aaron', 'Paul');
INSERT INTO ACTEUR VALUES(3, 'Cuoco', 'Kaley');
INSERT INTO ACTEUR VALUES(4, 'Parsons', 'Jim');
INSERT INTO ACTEUR VALUES(5, 'Wheaton', 'Wil');
INSERT INTO ACTEUR VALUES(6, 'Judor', 'Eric');
INSERT INTO ACTEUR VALUES(7, 'Ferdjioui', 'Hafid');
INSERT INTO ACTEUR VALUES(8, 'Odenkirk', 'Bob');

--JOUE--

--Breaking Bad--
INSERT INTO JOUE VALUES(58,1);
INSERT INTO JOUE VALUES(59,1);
INSERT INTO JOUE VALUES(60,1);
INSERT INTO JOUE VALUES(61,1);
INSERT INTO JOUE VALUES(62,1);
INSERT INTO JOUE VALUES(63,1);
INSERT INTO JOUE VALUES(64,1);
INSERT INTO JOUE VALUES(65,1);
INSERT INTO JOUE VALUES(66,1);
INSERT INTO JOUE VALUES(67,1);
INSERT INTO JOUE VALUES(68,1);
INSERT INTO JOUE VALUES(69,1);

INSERT INTO JOUE VALUES(58,2);
INSERT INTO JOUE VALUES(59,2);
INSERT INTO JOUE VALUES(60,2);
INSERT INTO JOUE VALUES(61,2);
INSERT INTO JOUE VALUES(62,2);
INSERT INTO JOUE VALUES(63,2);
INSERT INTO JOUE VALUES(64,2);
INSERT INTO JOUE VALUES(65,2);
INSERT INTO JOUE VALUES(66,2);
INSERT INTO JOUE VALUES(67,2);
INSERT INTO JOUE VALUES(68,2);
INSERT INTO JOUE VALUES(69,2);

INSERT INTO JOUE VALUES(65,8);
INSERT INTO JOUE VALUES(66,8);
INSERT INTO JOUE VALUES(67,8);
INSERT INTO JOUE VALUES(68,8);

--Big Bang Theory--

INSERT INTO JOUE VALUES(41,3);
INSERT INTO JOUE VALUES(42,3);
INSERT INTO JOUE VALUES(43,3);
INSERT INTO JOUE VALUES(44,3);
INSERT INTO JOUE VALUES(45,3);
INSERT INTO JOUE VALUES(46,3);
INSERT INTO JOUE VALUES(47,3);
INSERT INTO JOUE VALUES(48,3);
INSERT INTO JOUE VALUES(49,3);
INSERT INTO JOUE VALUES(50,3);
INSERT INTO JOUE VALUES(51,3);
INSERT INTO JOUE VALUES(52,3);
INSERT INTO JOUE VALUES(53,3);
INSERT INTO JOUE VALUES(54,3);
INSERT INTO JOUE VALUES(55,3);
INSERT INTO JOUE VALUES(56,3);
INSERT INTO JOUE VALUES(57,3);

INSERT INTO JOUE VALUES(41,4);
INSERT INTO JOUE VALUES(42,4);
INSERT INTO JOUE VALUES(43,4);
INSERT INTO JOUE VALUES(44,4);
INSERT INTO JOUE VALUES(45,4);
INSERT INTO JOUE VALUES(46,4);
INSERT INTO JOUE VALUES(47,4);
INSERT INTO JOUE VALUES(48,4);
INSERT INTO JOUE VALUES(49,4);
INSERT INTO JOUE VALUES(50,4);
INSERT INTO JOUE VALUES(51,4);
INSERT INTO JOUE VALUES(52,4);
INSERT INTO JOUE VALUES(53,4);
INSERT INTO JOUE VALUES(54,4);
INSERT INTO JOUE VALUES(55,4);
INSERT INTO JOUE VALUES(56,4);
INSERT INTO JOUE VALUES(57,4);

INSERT INTO JOUE VALUES(41,5);
INSERT INTO JOUE VALUES(52,5);
INSERT INTO JOUE VALUES(54,5);

--Malcolm--

INSERT INTO JOUE VALUES(70,1);
INSERT INTO JOUE VALUES(71,1);
INSERT INTO JOUE VALUES(72,1);
INSERT INTO JOUE VALUES(73,1);
INSERT INTO JOUE VALUES(74,1);
INSERT INTO JOUE VALUES(75,1);
INSERT INTO JOUE VALUES(76,1);
INSERT INTO JOUE VALUES(77,1);
INSERT INTO JOUE VALUES(78,1);
INSERT INTO JOUE VALUES(79,1);
INSERT INTO JOUE VALUES(80,1);
INSERT INTO JOUE VALUES(81,1);


--Realisateur--

INSERT INTO REALISATEUR VALUES(1, 'Holland', 'Todd');
INSERT INTO REALISATEUR VALUES(2, 'Cranston', 'Bryan');
INSERT INTO REALISATEUR VALUES(3, 'Parsons', 'Jim');


--Realise--

INSERT INTO REALISE VALUES(1,70);
INSERT INTO REALISE VALUES(1,71);
INSERT INTO REALISE VALUES(1,72);
INSERT INTO REALISE VALUES(1,73);
INSERT INTO REALISE VALUES(1,74);
INSERT INTO REALISE VALUES(1,75);
INSERT INTO REALISE VALUES(2,76);
INSERT INTO REALISE VALUES(1,77);
INSERT INTO REALISE VALUES(1,78);
INSERT INTO REALISE VALUES(1,79);
INSERT INTO REALISE VALUES(1,80);
INSERT INTO REALISE VALUES(1,81);

INSERT INTO REALISE VALUES(3,51)
INSERT INTO REALISE VALUES(3,54)
