/**
 * Requêtes de niveau 1
 * (req. sur 1 table)
 *
 * auteur:	Christophe Kafrouni
 * date:	10/02/2023
 */

-- 1
-- Écrivez une requête SQL qui permette d'afficher tout le contenu de votre table bd1.albums.
-- Vous trouverez le contenu complet de cette table dans l’annexe 2
SELECT *
FROM bd1.album;

-- 2
-- Donnez, pour chaque album, son isbn, son titre, son scénariste, son dessinateur ainsi que sa date
-- d'édition.
SELECT isbn, titre, scenariste, dessinateur, date_edition
FROM bd1.album;

-- 3
-- Quels sont les albums édités par "Dupuis" ?
SELECT *
FROM bd1.album
WHERE editeur = 'Dupuis';

-- 4
-- Quels sont les différents titres des albums dont le scénariste est "Sente" ?
SELECT DISTINCT titre
FROM bd1.album
WHERE scenariste = 'Sente';

-- 5
-- Quels sont les différents titres et éditeurs des albums dont un des auteurs s'appelle "Uderzo" ?
SELECT titre, editeur
FROM bd1.album
WHERE scenariste = 'Uderzo'
   OR dessinateur = 'Uderzo';

-- 6
-- Quels sont les albums pour lesquels le coloriste n'a pas été spécifié ?
SELECT *
FROM bd1.album
WHERE coloriste ISNULL;

-- 7
-- Quels sont les éditeurs qui ont édité des albums en 1977 ?
SELECT DISTINCT editeur
FROM bd1.album
WHERE date_edition >= '1977-01-01'
  AND date_edition < '1978-01-01';

-- 8
-- Quels sont les couples scénaristes-dessinateurs ayant travaillé ensemble pour l'éditeur "Dargaud"
-- ? (Attention : si le nom du dessinateur est le même que celui du scénariste, c'est que la même
-- personne a effectué les deux tâches, et on ne parlera donc pas de "couple".)
SELECT DISTINCT scenariste, dessinateur
FROM bd1.album
WHERE editeur = 'Dargaud'
  AND scenariste <> dessinateur;

-- 9
-- Quels sont les albums dont le scénariste et le dessinateur sont la même personne, mais qui ont
-- été mis en couleur par quelqu'un d'autre ?
SELECT *
FROM bd1.album
WHERE scenariste = dessinateur
  AND scenariste <> coloriste;

-- 10
-- Quels sont les albums dont le scénariste, le dessinateur et le coloriste sont la même personne ?
SELECT *
FROM bd1.album
WHERE scenariste = dessinateur
  AND scenariste = coloriste;

-- 11
-- Quels sont les albums qui n'ont qu'un seul auteur ? (Cela recouvre les cas de l'exercice précédent,
-- mais il ne faut pas oublier les tuples pour lesquels un ou deux des trois attributs concernés ont la
-- valeur NULL !)
SELECT *
FROM bd1.album
WHERE (scenariste = dessinateur AND scenariste = coloriste)
   OR (scenariste = dessinateur AND coloriste ISNULL)
   OR (scenariste = coloriste AND dessinateur ISNULL)
   OR (dessinateur = coloriste AND scenariste ISNULL)
   OR (scenariste ISNULL AND dessinateur ISNULL AND coloriste IS NOT NULL)
   OR (scenariste ISNULL AND coloriste ISNULL AND dessinateur IS NOT NULL)
   OR (dessinateur ISNULL AND coloriste ISNULL AND scenariste IS NOT NULL);

-- 12
-- Quels sont les scénaristes dont on a édité, en 1980 ou après, des œuvres qui coûtent moins de
-- 12 € ?
SELECT DISTINCT scenariste
FROM bd1.album
WHERE scenariste IS NOT NULL
  AND prix < 12
  AND date_edition > '1980-01-01';

-- 13
-- Quels sont les ISBN et les titres des albums édités en dehors de la décennie 1990-1999, par un
-- éditeur autre que "Casterman ", et dont le coloriste est ou bien non spécifié ou bien le même que
-- le dessinateur ?
SELECT isbn, titre
FROM bd1.album
WHERE editeur != 'Casterman'
  AND (date_edition < '1990-01-01' OR date_edition >= '2000-01-01')
  AND (coloriste ISNULL OR coloriste = dessinateur);

-- 14
-- Quels sont les différents titres qui n'ont été édités ni par "Casterman", ni par "Dupuis", et qui ont,
-- comme scénariste, dessinateur et coloriste, trois auteurs distincts ?
SELECT DISTINCT titre
FROM bd1.album
WHERE editeur <> 'Casterman'
  AND editeur <> 'Dupuis'
  AND scenariste <> dessinateur
  AND scenariste <> coloriste
  AND dessinateur <> coloriste;

-- 15
-- Quels sont tous les albums qui rentrent dans une des catégories suivantes au moins :
-- ▪ albums de la série "Lucky Luke" édités chez "Dargaud",
-- ▪ albums de la série "Astérix" édités chez "Albert René" ou au "Le Lombard"
-- ▪ albums sans aucun auteur spécifié.
SELECT *
FROM bd1.album
WHERE (scenariste ISNULL AND coloriste ISNULL AND dessinateur ISNULL)
   OR (serie = 'Lucky Luke' AND editeur = 'Dargaud')
   OR (serie = 'Astérix' AND (editeur = 'Albert René' OR editeur = 'Le Lombard'));

-- 16
-- Quelles sont les différents titres et prix des albums édités en France dont soit le dessinateur est
-- inconnu, soit le coloriste est inconnu, soit les deux sont inconnus ?
SELECT DISTINCT titre, prix
FROM bd1.album
WHERE pays_edition = 'fr'
  AND (dessinateur ISNULL OR coloriste ISNULL);

-- 17
-- Donnez l’ISBN, le titre et la date d’édition des albums de la série "Astérix" dans l’ordre
-- chronologique (cf. date d'édition).
SELECT isbn, titre, date_edition
FROM bd1.album
WHERE serie = 'Astérix'
ORDER BY date_edition;

-- 18
-- Donnez les différents titres des albums de la série "Astérix", en ordre alphabétique des titres.
SELECT DISTINCT titre
FROM bd1.album
WHERE serie = 'Astérix'
ORDER BY titre;

-- 19
-- Donnez les albums (isbn, titre, nom d’éditeur et date d'édition) en les classant par éditeur, et pour
-- chaque éditeur, par date d'édition.
SELECT isbn, titre, editeur, date_edition
FROM bd1.album
ORDER BY editeur, date_edition;

-- 20
-- Donnez l’ISBN, le titre et les prix des albums édités par "Dupuis", par ordre décroissant de prix.
SELECT isbn, titre, prix
FROM bd1.album
WHERE editeur = 'Dupuis'
ORDER BY prix DESC;