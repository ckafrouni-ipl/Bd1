/**
 * Suite des requêtes de niveau 1
 * (req. sur 1 table)
 *
 * auteur:	Christophe Kafrouni
 * date:	08/02/2023
 */

/******************************************************************************
 * Exercices sur les fonctions agrégées.
 */
-- 21
-- Quelle est la plus ancienne date d'édition de la table bd1.albums ?
SELECT MIN(date_edition) date_la_plus_ancienne
FROM bd1.album;

-- 22
-- Quel est le prix de l’album le plus cher parmi ceux qui ont été
-- dessinés par un autre dessinateur qu'"Uderzo" ?
SELECT MAX(prix) prix_maximum
FROM bd1.album
WHERE dessinateur <> 'Uderzo';

-- 23
-- Combien y a-t-il d’albums édités chez "Casterman" ?
SELECT COUNT(*) nb_albums
FROM bd1.album
WHERE editeur = 'Casterman';

-- 24
-- Quels est le prix moyen des albums édités par " Blake et Mortimer
-- " entre 1990 et 1999 (y compris ces deux années extrêmes) ?
SELECT AVG(prix) prix_moyen
FROM bd1.album
WHERE editeur = 'Blake et Mortimer'
  AND date_edition >= '1990-01-01'
  AND date_edition < '2000-01-01';
-- Ou, en utilisant BETWEEN
SELECT AVG(prix) prix_moyen
FROM bd1.album
WHERE editeur = 'Blake et Mortimer'
  AND date_edition BETWEEN '1990-01-01' AND '1999-12-31';

-- 25
-- Combien devrais-je payer si je veux acheter un exemplaire de
-- chaque album de la série « Spirou » ?
SELECT SUM(prix) AS prix_total
FROM bd1.album
WHERE serie = 'Spirou';

/******************************************************************************
 * Exercices mélangés.
 */

-- 26
-- Listez les différents titres des albums qui contiennent le mot
-- "mystère".
SELECT DISTINCT titre
FROM bd1.album
WHERE titre LIKE '%mystère%';

-- 27
-- Combien devrai-je payer si j’achète 3 exemplaires de chacun des albums
-- édités par "Blake et Mortimer"
-- et si le libraire m’accorde une réduction de 25% ?
SELECT SUM(3 * (prix * 0.75)) AS prix_total
FROM bd1.album
WHERE editeur = 'Blake et Mortimer';


-- 28
-- Combien d’années séparent l’album le plus ancien de l’album le plus récent ?
SELECT EXTRACT(YEAR FROM MAX(date_edition)) - EXTRACT(YEAR FROM MIN(date_edition)) AS nb_annees
FROM bd1.album;

-- 29
-- Quels sont les éditeurs dont le nom est composé d’au moins deux mots séparés par un espace ?
SELECT DISTINCT editeur
FROM bd1.album
WHERE editeur LIKE '% %';

-- 30
-- Listez les scénaristes des albums, de la série "Astérix" ou "Blake et Mortimer", édités en 2000 ou
-- après. Classez-les par ordre alphabétique.
SELECT DISTINCT scenariste
FROM bd1.album
WHERE scenariste IS NOT NULL
  AND (serie = 'Astérix' OR serie = 'Blake et Mortimer')
  AND date_edition >= '2000-01-01';

-- 31
-- Combien y a-t-il de séries différentes dans la table bd1.albums ?
SELECT COUNT(DISTINCT serie) nb_series
FROM bd1.album
WHERE serie IS NOT NULL;

-- 32
-- Combien y a-t-il d’albums pour lesquels la série **est** spécifiée ?
-- Peut-on répondre à cette question par un query sans clause WHERE ?
-- SOLUTION : OUI
-- count(x) ne prend en compte uniquement les lignes non-nulle de x
SELECT COUNT(serie) nb_albums_avec_serie
FROM bd1.album;

-- 33
-- Combien y a-t-il d’albums pour lesquels la série **n’est pas** spécifiée ?
-- Peut-on répondre à cette question par un query sans clause WHERE ?
SELECT COUNT(*) nb_albums_sans_serie
FROM bd1.album
WHERE serie ISNULL;
-- SOLUTION : OUI
SELECT COUNT(*) - COUNT(serie) nb_albums_sans_serie
FROM bd1.album;

-- 34
-- Donnez tous les albums dont l’ISBN commence par 2 et se termine par X (peu importe la casse).
SELECT *
FROM bd1.album
WHERE isbn ILIKE '2%X';

-- 35
-- Chez combien d’éditeurs a-ton publié des albums de la série « Astérix » ?
SELECT COUNT(DISTINCT editeur) nb_editeurs
FROM bd1.album
WHERE serie = 'Astérix';

-- 36
-- Listez les coloristes dont le nom commence par le mot "de" (peu importe la casse).
SELECT DISTINCT coloriste
FROM bd1.album
WHERE coloriste ILIKE 'de%';

-- 37
-- Combien y a-t-il d'albums dont un des auteurs au moins s'appelle "Uderzo", et quelles sont les
-- dates d'édition du plus ancien et du plus récent d'entre eux ?
SELECT COUNT(*)          nb_albums,
	   MIN(date_edition) date_plus_ancien,
	   MAX(date_edition) date_plus_recent
FROM bd1.album
WHERE 'Uderzo' IN (scenariste, dessinateur, coloriste);

-- 38
-- Quel est le prix moyen des albums édités par "Dupuis" à l’exception des albums édités entre
-- 1990 et 1999, bornes comprises.
SELECT AVG(prix) prix_moyen
FROM bd1.album
WHERE editeur = 'Dupuis'
  AND date_edition NOT BETWEEN '1990-01-01' AND '1999-12-31';

-- 39
-- Donnez la liste des albums dont l’ISBN contient « 00 ». Classez-les par ordre décroissant de prix.
-- Pour les albums de même prix, classez-les par éditeur.
SELECT *
FROM bd1.album
WHERE isbn LIKE '%00%'
ORDER BY prix DESC, editeur;

-- 40
-- Quels sont les éditeurs d’albums qui sont soit édités en Belgique, soit dont le pays d’édition
-- n’est pas spécifié, et qui sont parus entre 2010 et 2020 inclus ?
SELECT DISTINCT editeur
FROM bd1.album
WHERE (pays_edition ISNULL OR pays_edition = 'be')
  AND date_edition BETWEEN '2010-01-01' AND '2020-12-31';

-- 41
-- Donnez l’ISBN, le titre, la série et la date d’édition de tous les albums édités entre 1980 et 1990
-- (bornes comprises). Les albums d’une même série doivent se suivre et, pour une même série, les
-- albums doivent être classés du plus récent au plus ancien.
SELECT isbn, titre, serie, date_edition
FROM bd1.album
WHERE date_edition BETWEEN '1980-01-01' AND '1990-12-31'
ORDER BY serie, date_edition DESC;

-- 42
-- Si je veux acheter un exemplaire de tous les albums dont le scénariste est "Goscinny" et/ou le
-- dessinateur "Uderzo", combien devrais-je débourser ?
SELECT SUM(prix) prix_total
FROM bd1.album
WHERE scenariste = 'Goscinny'
   OR dessinateur = 'Uderzo';

-- 43
-- Si je veux acheter un exemplaire de tous les albums dont le scénariste n’est ni "Goscinny" ni
-- "Uderzo", combien devrais-je débourser ?
SELECT SUM(prix) prix_total
FROM bd1.album
WHERE scenariste NOT IN ('Goscinny', 'Uderzo');

-- 44
-- Donnez l’ISBN, le titre, le scénariste et la série des albums dont le nom de la série apparaît dans
-- le titre (peu importe la casse du titre ou de la série).
SELECT isbn, titre, scenariste, serie
FROM bd1.album
WHERE titre ILIKE '%' || serie || '%';