CREATE SCHEMA IF NOT EXISTS bd3;

CREATE TABLE IF NOT EXISTS bd3.editeurs
(
	id_editeur INTEGER PRIMARY KEY,
	nom        VARCHAR(20) NOT NULL,
	adresse    VARCHAR(30),
	pays       CHAR(2)
);

CREATE TABLE IF NOT EXISTS bd3.auteurs
(
	id_auteur INTEGER PRIMARY KEY,
	nom       VARCHAR(20) NOT NULL,
	e_mail    VARCHAR(30)
);

CREATE TABLE IF NOT EXISTS bd3.series
(
	id_serie INTEGER PRIMARY KEY,
	nom      VARCHAR(30) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS bd3.albums
(
	isbn         CHAR(13) PRIMARY KEY,
	titre        VARCHAR(50)                                  NOT NULL,
	serie        INTEGER REFERENCES bd3.series (id_serie),
	editeur      INTEGER REFERENCES bd3.editeurs (id_editeur) NOT NULL,
	date_edition DATE,
	prix         DOUBLE PRECISION                             NOT NULL
);

CREATE TABLE IF NOT EXISTS bd3.participations
(
	isbn   CHAR(13) REFERENCES bd3.albums (isbn)      NOT NULL,
	auteur INTEGER REFERENCES bd3.auteurs (id_auteur) NOT NULL,
	role   CHAR(1) CHECK (role IN ('d', 's', 'c'))    NOT NULL,
	PRIMARY KEY (isbn, auteur, ROLE)
);