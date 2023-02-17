-- 1. Donnez la liste des albums, avec, pour chacun d'eux, l'isbn, le titre, le scénariste, le dessinateur et
-- le numéro de l'éditeur.
SELECT a.isbn, a.titre, a.scenariste, a.dessinateur, e.id_editeur AS editeur
FROM bd2.albums a,
	 bd2.editeurs e
WHERE a.editeur = e.id_editeur;

-- 2. Donnez la liste des albums, avec, pour chacun d'eux, l'isbn, le titre, le scénariste, le dessinateur et
-- le nom de l'éditeur.
SELECT a.isbn, a.titre, a.scenariste, a.dessinateur, e.nom
FROM bd2.albums a,
	 bd2.editeurs e
WHERE a.editeur = e.id_editeur;

-- 3. Donnez la liste des albums (isbn, titre et nom de l'éditeur) dont l'éditeur est belge.
SELECT a.isbn, a.titre, e.nom
FROM bd2.albums a,
	 bd2.editeurs e
WHERE a.editeur = e.id_editeur
  AND e.pays = 'be';

-- 4. Donnez la liste des albums dont l'éditeur est belge sans la condition de jointure (isbn, titre et nom
-- de l'éditeur). Que constatez-vous ?
SELECT a.isbn, a.titre, e.nom
FROM bd2.albums a,
	 bd2.editeurs e
WHERE e.pays = 'be';

-- 5. Quels sont les albums (isbn et titre) de la série « Astérix » qui n'ont pas été édités chez
-- « Dargaud » ?
SELECT a.isbn, a.titre
FROM bd2.albums a,
	 bd2.editeurs e
WHERE a.editeur = e.id_editeur
  AND a.serie ILIKE 'astérix'
  AND NOT e.nom ILIKE 'dargaud';

-- 6. Quels sont les éditeurs (id et nom) qui ont édité en 1999 des livres coûtant au moins 10 euros ?
SELECT DISTINCT e.id_editeur, e.nom
FROM bd2.albums a,
	 bd2.editeurs e
WHERE a.editeur = e.id_editeur
  AND a.prix >= 10
  AND EXTRACT(YEAR FROM a.date_edition) = 1999;

-- 7. Chez quel(s) éditeur(s) (id et nom) « Uderzo » a-t-il publié des albums (en tant que scénariste,
-- dessinateur ou coloriste) ?
SELECT DISTINCT e.id_editeur, e.nom
FROM bd2.albums a,
	 bd2.editeurs e
WHERE a.editeur = e.id_editeur
  AND 'Uderzo' IN (a.scenariste, a.dessinateur, a.coloriste);

-- 8. Quels sont les éditeurs (id et nom) localisés ailleurs qu'en Belgique ou pour lequel le pays n'est
-- pas précisé ?
SELECT DISTINCT e.id_editeur, e.nom
FROM bd2.editeurs e
WHERE e.pays IS NULL
   OR e.pays <> 'be';

-- 9. Quels sont les albums qui ont été édités en Belgique ou en France, et qui ne sont ni des albums
-- de la série « Tintin », ni des albums de la série « Astérix » ?
SELECT a.*
FROM bd2.albums a,
	 bd2.editeurs e
WHERE a.editeur = e.id_editeur
  AND e.pays IN ('be', 'fr')
  AND (a.serie IS NULL OR
	   a.serie NOT IN ('Tintin', 'Astérix'));

-- 10. Quels sont les dessinateurs qui ont été édités par « Dupuis » ? Affichez-les en ordre alphabétique.
SELECT DISTINCT a.dessinateur
FROM bd2.albums a,
	 bd2.editeurs e
WHERE a.editeur = e.id_editeur
  AND a.dessinateur IS NOT NULL
  AND LOWER(e.nom) = 'dupuis'
ORDER BY a.dessinateur;

-- 11. Donnez la liste des albums édités par « Dupuis » entre 1990 et 2000 (bornes incluses), en affichant
-- pour chacun son isbn, son titre, son dessinateur et sa date d’édition. Triez le tout par dessinateur.
-- Pour chaque dessinateur, les albums doivent être rangés en ordre chronologique.
SELECT a.isbn, a.titre, a.dessinateur, a.date_edition
FROM bd2.albums a,
	 bd2.editeurs e
WHERE a.editeur = e.id_editeur
  AND LOWER(e.nom) = 'dupuis'
  AND a.date_edition BETWEEN '1990-01-01' AND '2000-12-31'
ORDER BY a.dessinateur, a.date_edition;

-- 12. Chez quels éditeurs (id et nom) y a-t-il des albums pour lesquels aucun auteur n'est fourni ?
SELECT DISTINCT e.id_editeur, e.nom
FROM bd2.albums a,
	 bd2.editeurs e
WHERE a.editeur = e.id_editeur
  AND a.dessinateur IS NULL
  AND a.coloriste IS NULL
  AND a.scenariste IS NULL;

-- 13. Y a-t-il des albums pour lesquels le nom de l'éditeur est le même que celui de la série ? Donnez,
-- pour ces albums, leur isbn et leur titre.
SELECT a.isbn, a.titre
FROM bd2.albums a,
	 bd2.editeurs e
WHERE a.editeur = e.id_editeur
  AND e.nom = a.serie;

-- 14. Donnez le nom des éditeurs qui portent le même nom qu’au moins un auteur.
-- IMPORTANT : On n'applique pas la condition de jointure pour selectionner toutes les permutations possibles.
SELECT DISTINCT e.nom
FROM bd2.albums a,
	 bd2.editeurs e
WHERE (e.nom = a.scenariste OR e.nom = a.coloriste OR e.nom = a.dessinateur);

-- 15. Quelle est la date d’édition du dernier album édité en octobre 2013 ?
SELECT MAX(a.date_edition) date_dernier_album
FROM bd2.albums a
WHERE EXTRACT(MONTH FROM a.date_edition) = 10
  AND EXTRACT(YEAR FROM a.date_edition) = 2013;

-- 16. Combien y a-t-il d'albums édités en Belgique dont le dessinateur et le scénariste sont des
-- personnes différentes ?
SELECT COUNT(*) nb_albums
FROM bd2.albums a,
	 bd2.editeurs e
WHERE a.editeur = e.id_editeur
  AND e.pays = 'be'
  AND a.dessinateur <> a.scenariste;

-- 17. Quelle est la date d'édition la plus ancienne pour les albums édités chez « Casterman » ?
SELECT MIN(a.date_edition) edition_plus_ancienne
FROM bd2.albums a,
	 bd2.editeurs e
WHERE a.editeur = e.id_editeur
  AND LOWER(e.nom) = 'casterman';

-- 18. Quel est le prix moyen des albums édités par des éditeurs français ?
SELECT AVG(a.prix) prix_moyen
FROM bd2.albums a,
	 bd2.editeurs e
WHERE a.editeur = e.id_editeur
  AND e.pays = 'fr';

-- 19. Si je n'ai que 5 euros en poche, quelle est la date d'édition de l'album le plus ancien que je puisse
-- acheter ?
SELECT MIN(a.date_edition) date_edition_album_plus_ancien
FROM bd2.albums a
WHERE a.prix <= 5;

-- 20. Combien d'albums n'ont ni scénariste, ni dessinateur, ni coloriste mentionné ?
SELECT COUNT(*) nb_albums
FROM bd2.albums a
WHERE a.scenariste IS NULL
  AND a.dessinateur IS NULL
  AND a.coloriste IS NULL;

-- 21. Combien dois-je débourser pour acheter tous les albums dont l’éditeur est belge et coûtant moins
-- de 8 euros ? Et combien d'albums achèterai-je ainsi ? Quel sera leur prix moyen ?
SELECT SUM(a.prix) prix_tous_albums, COUNT(*) nb_albums, AVG(a.prix) prix_moyen
FROM bd2.albums a,
	 bd2.editeurs e
WHERE a.editeur = e.id_editeur
  AND e.pays = 'be'
  AND a.prix < 8;

-- 22. Combien d'années « Franquin » a-t-il écrit ?
SELECT EXTRACT(YEAR FROM MAX(a.date_edition)) - EXTRACT(YEAR FROM MIN(a.date_edition)) + 1 nb_annees
FROM bd2.albums a
WHERE a.scenariste = 'Franquin';

-- 23. Oscar a reçu pour son anniversaire l’album « Le mystère de la grande pyramide » dont l’isbn est
-- 2-87097-008-0. Malheureusement, il l’a déjà. Heureusement il peut l’échanger contre n’importe
-- quel autre album du même prix mais dont le titre est différent. Contre quels albums peut-il
-- l’échanger ?
SELECT a.*
FROM bd2.albums a
WHERE a.prix = (SELECT prix FROM bd2.albums WHERE isbn = '2-87097-008-0')
  AND a.titre <> (SELECT titre FROM bd2.albums WHERE isbn = '2-87097-008-0');

-- WITH permet de créer une vue temporaire pour éviter de répéter la requête
WITH album AS (SELECT prix, titre
			   FROM bd2.albums
			   WHERE isbn = '2-87097-008-0')
SELECT a.*
FROM bd2.albums a,
	 album
WHERE a.prix = album.prix
  AND a.titre <> album.titre;