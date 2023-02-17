CREATE SCHEMA IF NOT EXISTS bd2;

CREATE TABLE IF NOT EXISTS bd2.editeurs
(
	id_editeur INTEGER PRIMARY KEY,
	nom        VARCHAR(20) NOT NULL,
	adresse    VARCHAR(30),
	pays       CHAR(2)
);

CREATE TABLE IF NOT EXISTS bd2.albums
(
	isbn         CHAR(13) PRIMARY KEY,
	titre        VARCHAR(50)      NOT NULL,
	serie        VARCHAR(30),
	scenariste   VARCHAR(20),
	dessinateur  VARCHAR(20),
	coloriste    VARCHAR(20),
	editeur      INTEGER          NOT NULL REFERENCES bd2.editeurs (id_editeur),
	date_edition DATE,
	prix         DOUBLE PRECISION NOT NULL
);