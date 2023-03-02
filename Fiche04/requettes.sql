-- 1.
-- Pour quel(s) éditeur(s) a travaillé « Goscinny » ?
SELECT DISTINCT e.*
FROM bd3.editeurs e,
	 bd3.albums a,
	 bd3.auteurs au,
	 bd3.participations p
WHERE a.editeur = e.id_editeur
  AND p.isbn = a.isbn
  AND p.auteur = au.id_auteur
  AND au.nom = 'Goscinny';

-- 2.
-- Quel est/sont le(s) dessinateur(s) de l'album « Astérix chez les Belges » ?
SELECT DISTINCT au.*
FROM bd3.auteurs au,
	 bd3.albums a,
	 bd3.participations p
WHERE a.isbn = p.isbn
  AND p.auteur = au.id_auteur
  AND a.titre = 'Astérix chez les Belges'
  AND p.role = 'd';

-- 3.
-- Quels sont les auteurs qui ont travaillé comme dessinateurs et/ou coloristes chez « Dupuis » ?
SELECT DISTINCT au.*
FROM bd3.auteurs au,
	 bd3.albums a,
	 bd3.participations p,
	 bd3.editeurs e
WHERE a.isbn = p.isbn
  AND p.auteur = au.id_auteur
  AND a.editeur = e.id_editeur
  AND e.nom = 'Dupuis'
  AND p.role IN ('d', 'c');

-----------------------------
-- Exercices sur 'GROUP BY'
-----------------------------
-- 4.
-- Donnez, pour chaque scénariste, son identifiant, son nom et le nombre d’albums qu’il a écrits.
SELECT au.id_auteur, au.nom, COUNT(a.*) nb_albums
FROM bd3.auteurs au,
	 bd3.albums a,
	 bd3.participations p
WHERE p.auteur = au.id_auteur
  AND p.isbn = a.isbn
  AND p.role = 's'
GROUP BY au.id_auteur;

-- 5.
-- Pour chaque éditeur ayant publié au moins 10 albums, donnez son identifiant, son nom, son pays
-- et la date du plus ancien et du plus récent de ses albums.
SELECT e.id_editeur,
	   e.nom,
	   e.pays,
	   MIN(a.date_edition) date_min,
	   MAX(a.date_edition) date_max
FROM bd3.editeurs e,
	 bd3.albums a
WHERE e.id_editeur = a.editeur
GROUP BY e.id_editeur
HAVING COUNT(a.*) >= 10;

-- 6.
-- Donnez, pour chaque série, son nom ainsi que le nombre d’albums en faisant partie et le prix total
-- à payer si on veut acheter tous les albums de la série. Classez le résultat par ordre décroissant du
-- nombre d’albums. Vous ne devez pas prendre les séries sans albums.
SELECT s.nom,
	   COUNT(a.*)  nb_albums,
	   SUM(a.prix) prix_total
FROM bd3.series s,
	 bd3.albums a
WHERE s.id_serie = a.serie
GROUP BY s.nom
ORDER BY nb_albums DESC;

-- 7.
-- Donnez, par année, le nombre d’albums édités en Belgique ainsi que le prix moyen de ces albums.
-- Il ne faut garder que les années où il y a eu plusieurs albums édités en Belgique et il faut classer
-- le résultat par ordre décroissant du nombre d’albums édités en Belgique et, en cas d’égalité, par
-- ordre croissant de l’année.
SELECT EXTRACT(YEAR FROM a.date_edition) annee,
	   COUNT(a.*)                        nb_albums,
	   AVG(a.prix)                       prix_moyen
FROM bd3.albums a,
	 bd3.editeurs e
WHERE a.editeur = e.id_editeur
  AND e.pays = 'be'
GROUP BY annee
HAVING COUNT(a.*) > 1
ORDER BY nb_albums DESC, annee;

-----------------------------
-- Exercices mélangés
-----------------------------
-- 8.
-- Combien d'auteurs (différents) a-t-on répertoriés pour l'album « Coke en Stock » dont l’ISBN est
-- 2-203-00109-0 ?
SELECT COUNT(DISTINCT au)
FROM bd3.auteurs au,
	 bd3.albums a,
	 bd3.participations p
WHERE p.auteur = au.id_auteur
  AND a.isbn = p.isbn
  AND a.titre = 'Coke en Stock'
  AND a.isbn = '2-203-00109-0';

-- 9.
-- Donnez les isbn, titres et les prix des albums dessinés par « Uderzo » entre 1985 et 1995.
SELECT a.isbn, a.titre, a.prix
FROM bd3.albums a,
	 bd3.participations p,
	 bd3.auteurs au
WHERE a.isbn = p.isbn
  AND p.auteur = au.id_auteur
  AND p.role = 'd'
  AND au.nom = 'Uderzo'
  AND EXTRACT(YEAR FROM a.date_edition) BETWEEN 1985 AND 1995;

-- 10.
-- Donnez la liste des albums édités en Belgique ou en France, appartenant à une série et ayant
-- plusieurs auteurs. Pour chacun de ces albums, affichez son ISBN, son titre, le nom de sa série, son
-- prix et son nombre d’auteurs.
SELECT a.isbn,
	   a.titre,
	   s.nom,
	   a.prix,
	   COUNT(DISTINCT au.*) nb_auteurs
FROM bd3.albums a,
	 bd3.editeurs e,
	 bd3.series s,
	 bd3.participations p,
	 bd3.auteurs au
WHERE a.isbn = p.isbn
  AND a.serie = s.id_serie
  AND a.editeur = e.id_editeur
  AND au.id_auteur = p.auteur
  AND e.pays IN ('be', 'fr')
GROUP BY a.isbn, a.titre, s.nom, a.prix
HAVING COUNT(DISTINCT au.*) > 1;

-- 11.
-- Donnez, pour chaque éditeur, son identifiant, son nom et le nombre de séries pour lesquelles il a
-- publié au moins un album. Classez les résultats par ordre décroissant du nombre de séries, et pour
-- les éditeurs ayant le même nombre de séries, par nom d’éditeur. Vous ne devez pas afficher les
-- éditeurs n’ayant pas publié d’albums appartenant à une série.
SELECT e.id_editeur, e.nom, COUNT(DISTINCT s.*) nb_series
FROM bd3.editeurs e,
	 bd3.series s,
	 bd3.albums a
WHERE e.id_editeur = a.editeur
  AND s.id_serie = a.serie
GROUP BY e.id_editeur, e.nom
HAVING COUNT(a.*) >= 1
ORDER BY nb_series DESC, e.nom;

-- 12.
-- Quels sont les albums édités par « Dupuis » pour lesquels on connaît le coloriste ?
SELECT DISTINCT a.*
FROM bd3.albums a,
	 bd3.editeurs e,
	 bd3.participations p
WHERE a.editeur = e.id_editeur
  AND a.isbn = p.isbn
  AND e.nom = 'Dupuis'
  AND p.role = 'c';

-- 13.
-- Quelle est la date d’édition de l'album le plus récent ayant « Goscinny » parmi ses auteurs ?
SELECT MAX(a.date_edition) date_plus_recente
FROM bd3.albums a,
	 bd3.auteurs au,
	 bd3.participations p
WHERE a.isbn = p.isbn
  AND p.auteur = au.id_auteur
  AND au.nom = 'Goscinny';

-- 14.
-- Donnez les identifiants et noms des auteurs qui ont collaboré, d'une façon ou d'une autre, à des
-- albums de la série « Astérix » avant 2010.
SELECT DISTINCT au.id_auteur, au.nom
FROM bd3.albums a,
	 bd3.participations p,
	 bd3.auteurs au,
	 bd3.series s
WHERE a.isbn = p.isbn
  AND p.auteur = au.id_auteur
  AND a.serie = s.id_serie
  AND s.nom = 'Astérix'
  AND EXTRACT(YEAR FROM a.date_edition) < 2010;

-- 15.
-- Quels rôles « Uderzo » a-t-il tenus dans les albums édités par « Dargaud » ?
SELECT DISTINCT p.role
FROM bd3.editeurs e,
	 bd3.albums a,
	 bd3.participations p,
	 bd3.auteurs au
WHERE a.isbn = p.isbn
  AND a.editeur = e.id_editeur
  AND au.id_auteur = p.auteur
  AND au.nom = 'Uderzo'
  AND e.nom = 'Dargaud';

-- 16.
-- Quels sont les auteurs qui ont joué plusieurs rôles (dessinateur, coloriste ...) dans un même
-- album ?
SELECT DISTINCT au.*
FROM bd3.auteurs au,
	 bd3.participations p,
	 bd3.albums a
WHERE a.isbn = p.isbn
  AND p.auteur = au.id_auteur
  AND (SELECT COUNT(p2.*)
	   FROM bd3.participations p2
	   WHERE p2.isbn = p.isbn
		 AND p2.auteur = p.auteur) > 1;

-- 17.
-- Combien y a-t-il d'albums dessinés par chaque dessinateur ? Pour chaque dessinateur, affichez
-- son identifiant, son nom et le nombre d’albums dessinés en classant le résultat par ordre
-- décroissant du nombre d’albums dessinés
SELECT au.id_auteur, au.nom, COUNT(a) nb_albums
FROM bd3.albums a,
	 bd3.participations p,
	 bd3.auteurs au
WHERE a.isbn = p.isbn
  AND p.auteur = au.id_auteur
  AND p.role = 'd'
GROUP BY au.id_auteur
ORDER BY nb_albums DESC;

-- 18.
-- Affichez le nom des séries n’ayant eu qu’un seul auteur.
SELECT s.nom
FROM bd3.albums a,
	 bd3.participations p,
	 bd3.auteurs au,
	 bd3.series s
WHERE a.isbn = p.isbn
  AND p.auteur = au.id_auteur
  AND a.serie = s.id_serie
GROUP BY s.nom
HAVING COUNT(DISTINCT au.*) = 1;

-- 19.
-- Donnez l’isbn, le titre et la date d’édition de tous les albums, édités en 1980 ou en 1981,
-- n’appartenant pas à une série.
SELECT a.isbn, a.titre, a.date_edition
FROM bd3.albums a
WHERE a.serie IS NULL
  AND EXTRACT(YEAR FROM a.date_edition) IN (1980, 1981);

-- 20.
-- Pour chaque éditeur qui a édité au moins un album de moins de 10€, affichez son identifiant, son
-- nom, sa nationalité, et le nombre d’albums de moins de 10€ qu'il a publiés. Les éditeurs de même
-- nationalité doivent se suivre et pour une même nationalité, les éditeurs doivent être triés par
-- ordre décroissant du nombre d'albums de moins de 10 euros.
SELECT e.id_editeur, e.nom, e.pays, COUNT(a.*)
FROM bd3.editeurs e,
	 bd3.albums a
WHERE a.editeur = e.id_editeur
  AND a.prix < 10
GROUP BY e.id_editeur, e.pays
ORDER BY e.pays, COUNT(a.*) DESC;