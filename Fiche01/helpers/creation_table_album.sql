CREATE TABLE IF NOT EXISTS bd1.album
(
	isbn         CHAR(13) PRIMARY KEY,
	titre        VARCHAR(50)      NOT NULL,
	serie        VARCHAR(30),
	scenariste   VARCHAR(20),
	dessinateur  VARCHAR(20),
	coloriste    VARCHAR(20),
	editeur      VARCHAR(20)      NOT NULL,
	pays_edition CHAR(2),
	date_edition DATE,
	prix         DOUBLE PRECISION NOT NULL
);