------------------------------------------------------------------------------------------------------------------------
-- Exercices avec SubSelect
------------------------------------------------------------------------------------------------------------------------

-- 1.
-- Donnez, pour chaque album dont le prix est supérieur au prix moyen de tous les albums, son isbn,
-- son titre, sa date d’édition, son prix et le nom de son éditeur. Triez le résultat par ordre décroissant
-- de prix et pour un même prix, dans l’ordre chronologique.
SELECT a.isbn, a.titre, a.date_edition, a.prix, e.nom
FROM bd3.albums a,
	 bd3.editeurs e
WHERE a.editeur = e.id_editeur
  AND a.prix > (SELECT AVG(a.prix) FROM bd3.albums a)
ORDER BY a.prix DESC, a.date_edition;

-- 2.
-- Donnez l’identifiant et le nom de tous les auteurs ayant été scénariste mais jamais coloriste ou
-- dessinateur.
SELECT DISTINCT au.id_auteur, au.nom
FROM bd3.auteurs au,
	 bd3.participations p
WHERE au.id_auteur = p.auteur
  AND p.role = 's'
  AND au.id_auteur NOT IN (SELECT p.auteur
						   FROM bd3.participations p
						   WHERE p.role IN ('c', 'd'));

-- 3.
-- Donnez les éditeurs qui ont publié au moins un album n’ayant pas d’auteurs connus.
SELECT DISTINCT e.nom
FROM bd3.editeurs e,
	 bd3.albums a
WHERE e.id_editeur = a.editeur
  AND a.isbn NOT IN (SELECT p.isbn
					 FROM bd3.participations p);

-- 4.
-- Donnez l’identifiant et le nom des auteurs ayant publié tous leurs albums chez "Dupuis". Il ne faut
-- pas prendre les auteurs n’ayant participé à aucun album.
SELECT DISTINCT au.id_auteur, au.nom
FROM bd3.auteurs au,
	 bd3.participations p
WHERE p.auteur = au.id_auteur
  AND p.auteur NOT IN (SELECT p.auteur
					   FROM bd3.albums a,
							bd3.participations p,
							bd3.editeurs e
					   WHERE p.isbn = a.isbn
						 AND e.id_editeur = a.editeur
						 AND e.nom <> 'Dupuis');

------------------------------------------------------------------------------------------------------------------------
-- Exercices mélangés
------------------------------------------------------------------------------------------------------------------------

-- 5.
-- Donnez les noms des séries dont au moins un album a été édité chez "Dupuis", et, pour chacune
-- d’elles, le nombre d’albums édités chez "Dupuis".
SELECT s.nom, COUNT(*)
FROM bd3.series s,
	 bd3.editeurs e,
	 bd3.albums a
WHERE a.serie = s.id_serie
  AND a.editeur = e.id_editeur
  AND e.nom = 'Dupuis'
GROUP BY s.nom;

-- 6.
-- Donnez les éditeurs qui ont édité des albums en 1978 ?
SELECT DISTINCT e.*
FROM bd3.albums a,
	 bd3.editeurs e
WHERE a.editeur = e.id_editeur
  AND EXTRACT(YEAR FROM a.date_edition) = 1978;

-- 7.
-- Quels sont les albums pour lesquels le coloriste n'a pas été spécifié ?
SELECT a.*
FROM bd3.albums a
WHERE a.isbn NOT IN (SELECT a.isbn
					 FROM bd3.albums a,
						  bd3.participations p
					 WHERE a.isbn = p.isbn
					   AND p.role = 'c');

-- 8.
-- Donnez, pour chaque série, son nom ainsi que le nombre d’auteurs y ayant contribué. Il ne faut
-- garder que les séries pour lesquelles plusieurs auteurs ont contribué. Classez les résultats en ordre
-- décroissant du nombre d’auteurs.
SELECT s.nom, COUNT(DISTINCT p.auteur) nb_auteurs
FROM bd3.series s,
	 bd3.participations p,
	 bd3.albums a
WHERE a.serie = s.id_serie
  AND a.isbn = p.isbn
GROUP BY s.nom
HAVING COUNT(DISTINCT p.auteur) > 1
ORDER BY nb_auteurs DESC;

-- 9.
-- Donnez, pour chaque scénariste, son identifiant, son nom et le nombre d’albums qu’il a écrits.
SELECT au.id_auteur, au.nom, COUNT(*) nb_albums
FROM bd3.auteurs au,
	 bd3.participations p,
	 bd3.albums a
WHERE a.isbn = p.isbn
  AND p.auteur = au.id_auteur
  AND p.role = 's'
GROUP BY au.id_auteur;

-- 10.
-- Donnez, pour chaque auteur, son identifiant, son nom et le nombre d’albums auxquels il a
-- participé ; affichez les résultats dans l’ordre décroissant du nombre d’albums. Les auteurs n’ayant
-- participé à aucun album ne doivent pas apparaître.
SELECT au.id_auteur, au.nom, COUNT(DISTINCT p.isbn) nb_albums
FROM bd3.auteurs au
	 JOIN bd3.participations p ON au.id_auteur = p.auteur
GROUP BY au.id_auteur
ORDER BY nb_albums DESC;

-- 11.
-- Quels sont les scénaristes dont on a édité, après 1990, des albums qui coûtent moins de 12 euros ?
SELECT DISTINCT au.*
FROM bd3.auteurs au,
	 bd3.albums a,
	 bd3.participations p
WHERE a.isbn = p.isbn
  AND p.auteur = au.id_auteur
  AND p.role = 's'
  AND EXTRACT(YEAR FROM a.date_edition) >= 1990
  AND a.prix < 12;

-- 12.
-- Donnez les isbn et titre du (des) album(s) le(s) moins cher(s) édités en 1976 ?
SELECT a.isbn, a.titre
FROM bd3.albums a
WHERE EXTRACT(YEAR FROM a.date_edition) = 1976
  AND a.prix = (SELECT MIN(a.prix)
				FROM bd3.albums a
				WHERE EXTRACT(YEAR FROM a.date_edition) = 1976);

-- 13.
-- Quels sont les albums qui n'ont qu'un seul auteur ?
SELECT a.isbn, a.titre, a.serie, a.editeur, a.date_edition, a.prix
FROM bd3.albums a,
	 bd3.participations p
WHERE a.isbn = p.isbn
GROUP BY a.isbn, a.titre, a.serie, a.editeur, a.date_edition, a.prix
HAVING COUNT(DISTINCT p.auteur) = 1;

-- 14.
-- Donnez, par année, le nombre d’albums édité cette année-là ainsi que le prix moyen de ces
-- albums. Les années où aucun album n’a été édité ne doivent pas apparaître.
SELECT EXTRACT(YEAR FROM a.date_edition) annee,
	   COUNT(a.*)                        nb_albums,
	   AVG(a.prix)                       prix_moyen
FROM bd3.albums a
WHERE EXTRACT(YEAR FROM a.date_edition) IS NOT NULL
GROUP BY annee
ORDER BY annee;

-- 15.
-- Donnez les dessinateurs qui ont travaillé sur des albums de plusieurs séries.
SELECT au.*
FROM bd3.auteurs au,
	 bd3.participations p,
	 bd3.albums a
WHERE a.isbn = p.isbn
  AND p.auteur = au.id_auteur
  AND p.role = 'd'
GROUP BY au.id_auteur, au.nom, au.e_mail
HAVING COUNT(DISTINCT a.serie) > 1;

-- 16.
-- Donnez la date d'édition la plus ancienne parmi les albums édités chez "Dargaud".
SELECT MIN(a.date_edition)
FROM bd3.albums a,
	 bd3.editeurs e
WHERE a.editeur = e.id_editeur
  AND e.nom = 'Dargaud';

-- 17.
-- Donnez le(s) albums le(s) plus ancien(s) parmi ceux édités chez "Dargaud".
SELECT a.*
FROM bd3.albums a
WHERE a.date_edition = (SELECT MIN(a.date_edition)
						FROM bd3.albums a,
							 bd3.editeurs e
						WHERE a.editeur = e.id_editeur
						  AND e.nom = 'Dargaud');

-- 18.
-- Donnez, pour chaque album, édité en Belgique ou en France, ayant au moins un auteur répertorié,
-- son isbn, son titre et le nombre d’auteurs intervenant dans cet album. Classez les albums par ordre
-- décroissant du nombre d’auteurs.
SELECT a.isbn, a.titre, COUNT(DISTINCT p.auteur) nb_auteurs
FROM bd3.albums a,
	 bd3.participations p,
	 bd3.editeurs e
WHERE a.isbn = p.isbn
  AND a.editeur = e.id_editeur
  AND e.pays IN ('be', 'fr')
GROUP BY a.isbn
ORDER BY nb_auteurs DESC, a.isbn;

-- 19.
-- Donnez, pour chaque paire d’albums de même titre, les isbn, date d’édition et le titre.
SELECT a1.isbn,
	   a2.isbn,
	   a1.date_edition,
	   a2.date_edition,
	   a1.titre
FROM bd3.albums a1,
	 bd3.albums a2
WHERE a1.titre = a2.titre
  AND a1.isbn > a2.isbn;

-- 20.
-- Donnez, pour chaque auteur dont l’adresse e-mail contient «@yahoo» et ayant participé à
-- plusieurs albums, son identifiant, son nom, son adresse e-mail, son nombre d’albums et le nombre
-- d’éditeurs ayant publié au moins un de ses albums.
SELECT au.id_auteur,
	   au.nom,
	   COUNT(DISTINCT p.isbn)    nb_albums,
	   COUNT(DISTINCT a.editeur) nb_editeurs
FROM bd3.participations p,
	 bd3.auteurs au,
	 bd3.albums a
WHERE p.auteur = au.id_auteur
  AND a.isbn = p.isbn
  AND au.e_mail LIKE '%@yahoo%'
GROUP BY au.id_auteur
HAVING COUNT(DISTINCT p.isbn) > 1;

-- 21.
-- Pour chaque auteur, donnez son identifiant, son nom et le nombre d’albums pour lesquels il est
-- le seul auteur. Il ne faut pas prendre les auteurs n’ayant aucun album pour lequel il est le seul
-- auteur.
SELECT au.id_auteur,
	   au.nom,
	   COUNT(DISTINCT p.isbn) nb_albums
FROM bd3.auteurs au,
	 bd3.participations p
WHERE au.id_auteur = p.auteur
  AND p.isbn NOT IN (SELECT p.isbn
					 FROM bd3.participations p
					 WHERE p.auteur <> au.id_auteur)
GROUP BY au.id_auteur;