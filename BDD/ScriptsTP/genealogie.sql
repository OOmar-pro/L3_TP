DROP TABLE genealogie;

CREATE TABLE genealogie (
  numPer NUMERIC,
  Nom varchar2(35) NOT NULL,
  DateNaissance date NOT NULL,
  Pere NUMERIC DEFAULT NULL,
  Mere NUMERIC DEFAULT NULL,
  PRIMARY KEY (numPer)
);

INSERT INTO genealogie (numPer, Nom, DateNaissance, Pere, Mere) VALUES (1, 'George VI', '14/12/1895', NULL, NULL);
INSERT INTO genealogie (numPer, Nom, DateNaissance, Pere, Mere) VALUES (2, 'Elizabeth Bowes-Lyon', '04/08/1900', NULL, NULL);
INSERT INTO genealogie (numPer, Nom, DateNaissance, Pere, Mere) VALUES (3, 'Elizabeth II', '21/04/1926', 1, 2);
INSERT INTO genealogie (numPer, Nom, DateNaissance, Pere, Mere) VALUES (4, 'Margaret du Royaume-Uni', '21/08/1930', 1, 2);
INSERT INTO genealogie (numPer, Nom, DateNaissance, Pere, Mere) VALUES (5, 'Philip Mountbatten', '10/06/1921', NULL, NULL);
INSERT INTO genealogie (numPer, Nom, DateNaissance, Pere, Mere) VALUES (6, 'Prince Charles', '14/11/1948', 5, 3);
INSERT INTO genealogie (numPer, Nom, DateNaissance, Pere, Mere) VALUES (7, 'Princesse Anne', '15/08/1950', 5, 3);
INSERT INTO genealogie (numPer, Nom, DateNaissance, Pere, Mere) VALUES (8, 'Prince Andrew', '19/02/1960', 5, 3);
INSERT INTO genealogie (numPer, Nom, DateNaissance, Pere, Mere) VALUES (9, 'Prince Edward', '10/03/1964', 5, 3);
INSERT INTO genealogie (numPer, Nom, DateNaissance, Pere, Mere) VALUES (10, 'Diana Spencer', '01/07/1961', NULL, NULL);
INSERT INTO genealogie (numPer, Nom, DateNaissance, Pere, Mere) VALUES (11, 'Prince William', '21/06/1982', 6, 10);
INSERT INTO genealogie (numPer, Nom, DateNaissance, Pere, Mere) VALUES (12, 'Prince Henry', '15/09/1984', 6, 10);?