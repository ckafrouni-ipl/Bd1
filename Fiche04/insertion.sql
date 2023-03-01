--insert
INSERT INTO bd3.auteurs(id_auteur,nom,e_mail)
VALUES(1,'Uderzo',null);
INSERT INTO bd3.auteurs(id_auteur,nom,e_mail)
VALUES(2,'Goscinny',null);
INSERT INTO bd3.auteurs(id_auteur,nom,e_mail)
VALUES(3,'Hergé',null);
INSERT INTO bd3.auteurs(id_auteur,nom,e_mail)
VALUES(4,'Franquin',null);
INSERT INTO bd3.auteurs(id_auteur,nom,e_mail)
VALUES(5,'Jacobs',null);
INSERT INTO bd3.auteurs(id_auteur,nom,e_mail)
VALUES(6,'de Moor',null);
INSERT INTO bd3.auteurs(id_auteur,nom,e_mail)
VALUES(7,'Sente','sente@gmail.com');
INSERT INTO bd3.auteurs(id_auteur,nom,e_mail)
VALUES(8,'Juillard','juillard@yahoo.fr');
INSERT INTO bd3.auteurs(id_auteur,nom,e_mail)
VALUES(9,'DeMille','demille@skynet.be');
INSERT INTO bd3.auteurs(id_auteur,nom,e_mail)
VALUES(10,'Benoît','benoit@yahoo.fr');
INSERT INTO bd3.auteurs(id_auteur,nom,e_mail)
VALUES(11,'Van Hamme','van_hamme@hotmail.com');
INSERT INTO bd3.auteurs(id_auteur,nom,e_mail)
VALUES(12,'Fanny','fanny@gmail.com');
INSERT INTO bd3.auteurs(id_auteur,nom,e_mail)
VALUES(13,'Jidehem',null);
INSERT INTO bd3.auteurs(id_auteur,nom,e_mail)
VALUES(14,'Cosey','cosey@hotmail.com');
INSERT INTO bd3.auteurs(id_auteur,nom,e_mail)
VALUES(15,'Morris',null);
INSERT INTO bd3.auteurs(id_auteur,nom,e_mail)
VALUES(16,'Guy Vidal',null);
INSERT INTO bd3.auteurs(id_auteur,nom,e_mail)
VALUES(17,'Dupuis','Dupuis@gmail.com');
INSERT INTO bd3.auteurs(id_auteur,nom,e_mail)
VALUES(18,'Pellerin','pellerin@yahoo.fr');
INSERT INTO bd3.auteurs(id_auteur,nom,e_mail)
VALUES(19,'Lylian','lylian@rapidnet.ca');
INSERT INTO bd3.auteurs(id_auteur,nom,e_mail)
VALUES(20,'Baldetti','baldetti@gmail.com');
INSERT INTO bd3.auteurs(id_auteur,nom,e_mail)
VALUES(21,'Chevalier','chevalier@yahoo.fr');
INSERT INTO bd3.auteurs(id_auteur,nom,e_mail)
VALUES(22,'Ferri','ferri@yahoo.fr');
INSERT INTO bd3.auteurs(id_auteur,nom,e_mail)
VALUES(23,'Conrad','conrad@gmail.fr');
INSERT INTO bd3.auteurs(id_auteur,nom,e_mail)
VALUES(24,'Midam','midam@skynet.be');
INSERT INTO bd3.auteurs(id_auteur,nom,e_mail)
VALUES(25,'Janry','janry@hotmail.com');
INSERT INTO bd3.auteurs(id_auteur,nom,e_mail)
VALUES(26,'Bastide','bastide@hotmail.com');
INSERT INTO bd3.auteurs(id_auteur,nom,e_mail)
VALUES(27,'Horikoshi','horikoshi@yahoo.co.jp');
INSERT INTO bd3.auteurs (id_auteur, nom, e_mail)
VALUES (28, 'Schuiten', 'schuiten@skynet.be');
INSERT INTO bd3.auteurs (id_auteur, nom, e_mail)
VALUES (29, 'Adam', null);
INSERT INTO bd3.auteurs (id_auteur, nom, e_mail)
VALUES (30, 'Ben BK', 'benbk@hotmail.com');
INSERT INTO bd3.auteurs (id_auteur, nom, e_mail)
VALUES (31, 'Patelin', 'patelin@gmail.com');
INSERT INTO bd3.auteurs (id_auteur, nom, e_mail)
VALUES (32, 'Dan', null);
INSERT INTO bd3.auteurs (id_auteur, nom, e_mail)
VALUES (33, 'Angèle', 'angele@gmail.com');
INSERT INTO bd3.auteurs (id_auteur, nom, e_mail)
VALUES (34, 'Gof', 'gof@gmail.com');
INSERT INTO bd3.auteurs (id_auteur, nom, e_mail)
VALUES (35, 'De Becker', null);

INSERT INTO bd3.editeurs (id_editeur,nom,adresse , pays)
VALUES (1, 'Albert René',NULL,'fr');
INSERT INTO bd3.editeurs (id_editeur,nom,adresse , pays)
VALUES (2, 'Dargaud',NULL,'fr');
INSERT INTO bd3.editeurs (id_editeur,nom,adresse , pays)
VALUES (3, 'Blake et Mortimer',NULL,'be');
INSERT INTO bd3.editeurs (id_editeur,nom,adresse , pays)
VALUES (4, 'Dupuis','Marcinelle','be');
INSERT INTO bd3.editeurs (id_editeur,nom,adresse , pays)
VALUES (5, 'Magic Strip','Bruxelles','be');
INSERT INTO bd3.editeurs (id_editeur,nom,adresse , pays)
VALUES (6, 'Le Lombard','Bruxelles','be');
INSERT INTO bd3.editeurs (id_editeur,nom,adresse , pays)
VALUES (7, 'Casterman',NULL,'be');
INSERT INTO bd3.editeurs (id_editeur,nom,adresse , pays)
VALUES (8, 'Fluide Glacial',NULL,'fr');
INSERT INTO bd3.editeurs (id_editeur,nom,adresse , pays)
VALUES (9, 'Watterson',NULL,'us');
INSERT INTO bd3.editeurs (id_editeur,nom,adresse , pays)
VALUES (10, 'Jacobs',NULL,'us');
INSERT INTO bd3.editeurs (id_editeur,nom,adresse , pays)
VALUES (11, 'Glénat',NULL,NULL);
INSERT INTO bd3.editeurs (id_editeur, nom, adresse, pays)
VALUES (12, 'Ki-oon', NULL, NULL);

INSERT INTO bd3.series
VALUES(1,'Lucky Luke');
INSERT INTO bd3.series
VALUES(2,'Tintin');
INSERT INTO bd3.series
VALUES(3,'Gaston');
INSERT INTO bd3.series
VALUES(4,'Spirou');
INSERT INTO bd3.series
VALUES(5,'Modeste');
INSERT INTO bd3.series
VALUES(6,'Astérix');
INSERT INTO bd3.series
VALUES(7,'Blake et Mortimer');
INSERT INTO bd3.series
VALUES(8,'OUMPAH-PAH');
INSERT INTO bd3.series
VALUES(9,'Dupuis');
INSERT INTO bd3.series
VALUES(10,'Calvin et Hobbes');
INSERT INTO bd3.series
VALUES(11,'Game Over');
INSERT INTO bd3.series
VALUES(12,'Le petit Spirou');
INSERT INTO bd3.series
VALUES(13,'Idéfix et les irréductibles');
INSERT INTO bd3.series
VALUES(14,'My Hero Academia');
INSERT INTO bd3.series
VALUES(15,'Rantanplan');

INSERT INTO bd3.albums
(isbn,titre,serie,editeur, date_edition,prix)
VALUES
('2-87097-055-9','Joyeux Noël, May',NULL,4,'1998-11-07',7);

INSERT INTO bd3.albums
(isbn,titre,serie, editeur,date_edition,prix)
VALUES
('2-205-03043-4','La fiancée de Lucky Luke',1,2,'1985-03-01',5);

INSERT INTO bd3.albums
(isbn,titre,serie, editeur,date_edition,prix)
VALUES
('2-88257-000-4','Nitroglycérine',1,2,'1987-07-03',5);

INSERT INTO bd3.albums
(isbn,titre,serie, editeur,date_edition,prix)
VALUES
('2-205-00585-5','Ma Dalton',1,2,'1980-06-05',5);

INSERT INTO bd3.albums
(isbn,titre,serie, editeur,date_edition,prix)
VALUES
('2-205-00920-6','La guérison des Dalton',1,2,'1978-06-28',5);

INSERT INTO bd3.albums
(isbn,titre,serie, editeur,date_edition,prix)
VALUES
('2-203-00105-4','L''Oreille Cassée',2,7,'1979-05-04',8);

INSERT INTO bd3.albums
(isbn,titre,serie, editeur,date_edition,prix)
VALUES
('2-203-00103-8','Les Cigares du Pharaon',2,7,'1955-02-24',8);

INSERT INTO bd3.albums
(isbn,titre,serie, editeur,date_edition,prix)
VALUES
('2-203-00107-0','Le Sceptre d''Ottokar',2,7,'1947-01-14',8);

INSERT INTO bd3.albums
(isbn,titre,serie, editeur,date_edition,prix)
VALUES
('2-908-46271-0','FAITES GAFFE A LAGAFFE',3,4,'1996-11-13',6);

INSERT INTO bd3.albums
(isbn,titre,serie, editeur,date_edition,prix)
VALUES
('2-8001-0955-6','LA SAGA DES GAFFES',3,4,'1982-12-01',6);

INSERT INTO bd3.albums
(isbn,titre,serie, editeur,date_edition,prix)
VALUES
('2-8001-0091-5','LE CAS LAGAFFE',3,4,'1977-01-01',6);

INSERT INTO bd3.albums
(isbn,titre,serie, editeur,date_edition,prix)
VALUES
('2-8001-0019-2','Spirou et les hommes-bulles',4,4,'1986-01-01',7);

INSERT INTO bd3.albums
(isbn,titre,serie, editeur,date_edition,prix)
VALUES
('2-8001-0018-4','L''ombre du Z',4,4,'1976-04-01',7);

INSERT INTO bd3.albums
(isbn,titre,serie, editeur,date_edition,prix)
VALUES
('2-8001-0017-6','Z comme Zorglub',4,4,'1977-08-24',7);

INSERT INTO bd3.albums
(isbn,titre,serie, editeur,date_edition,prix)
VALUES
('2-8001-0015-X','Le voyageur du mésozoïque',4,4,'1977-12-14',7);

INSERT INTO bd3.albums
(isbn,titre,serie, editeur,date_edition,prix)
VALUES
('2-895-00012-3','Idées Noires',NULL,8,'1981-10-05',10);

INSERT INTO bd3.albums
(isbn,titre,serie, editeur,date_edition,prix)
VALUES
('2-8035-0029-9','Modeste et Pompon',5,5,'1981-10-05',12);

INSERT INTO bd3.albums
(isbn,titre,serie, editeur,date_edition,prix)
VALUES
('2-86497-004-X','L''odyssée d''Astérix',6,1,'1981-07-02',6);

INSERT INTO bd3.albums
(isbn,titre,serie, editeur,date_edition,prix)
VALUES
('2-205-00096-9','Astérix le gaulois',6,2,'1975-06-16',6);

INSERT INTO bd3.albums
(isbn,titre,serie, editeur,date_edition,prix)
VALUES
('2-205-00600-2','Les lauriers de César',6,2,'1978-11-01',6);

INSERT INTO bd3.albums
(isbn,titre,serie, editeur,date_edition,prix)
VALUES
('2-205-00230-9','Astérix légionnaire',6,2,'1976-11-30',6);

INSERT INTO bd3.albums
(isbn,titre,serie, editeur,date_edition,prix)
VALUES
('2-87097-017-X','Les 3 Formules du Professeur Sato',7,3,'1990-01-01',12);

INSERT INTO bd3.albums
(isbn,titre,serie, editeur,date_edition,prix)
VALUES
('2-152-12345-X','Les aventures complètes d''Oumpah-Pah',8,6,'1980-12-31',12);

INSERT INTO bd3.albums
(isbn,titre,serie, editeur,date_edition,prix)
VALUES
('2-203-00109-0','Coke en Stock',2,7,'1958-07-12',8);

INSERT INTO bd3.albums
(isbn,titre,serie, editeur,date_edition,prix)
VALUES
('2-205-01150-2','Astérix chez les Belges',6,2,'1979-09-01',4);

INSERT INTO bd3.albums
(isbn,titre,serie, editeur,date_edition,prix)
VALUES
('2-87097-009-9','Le mystère de la grande pyramide',7,3,'1987-04-04',10);

INSERT INTO bd3.albums
(isbn,titre,serie, editeur,date_edition,prix)
VALUES
('2-87097-008-0','Le mystère de la grande pyramide',7,3,'1986-12-31',10);

INSERT INTO bd3.albums
(isbn,titre,serie, editeur,date_edition,prix)
VALUES
('2-87097-010-2','La marque jaune',7,3,'1987-12-15',9);

INSERT INTO bd3.albums
(isbn,titre,serie, editeur,date_edition,prix)
VALUES
('2-87097-043-9','L''Affaire Françis Blake',7,3,'1996-09-19',14);

INSERT INTO bd3.albums
(isbn,titre,serie, editeur,date_edition,prix)
VALUES
('2-87097-052-8','La Machination Voronov',7,3,'2000-01-01',14);


INSERT INTO bd3.albums
(isbn,titre,serie, editeur,date_edition,prix)
VALUES
('2-87097-178-8','La Machination Voronov',7,3,'2013-10-07',16);

INSERT INTO bd3.albums
(isbn,titre,serie, editeur,date_edition,prix)
VALUES
('2-8001-2900-x','Zeke raconte des histoires',NULL,4,'1999-12-31',14);

INSERT INTO bd3.albums
(isbn,titre,serie, editeur,date_edition,prix)
VALUES
('2-8021-3900-x','Spirou et Fantasio à Tokyo',9,2,'2001-09-20',14);

INSERT INTO bd3.albums
(isbn,titre,serie, editeur,date_edition,prix)
VALUES
('2-8031-3900-6','Une dernière aventure d''Astérix',6,2,'2006-10-27',14);

INSERT INTO bd3.albums
(isbn,titre,serie, editeur,date_edition,prix)
VALUES
('2-203-00123-2','Tintin et les Picaros',2,7,'1976-04-20',8);

INSERT INTO bd3.albums
(isbn,titre,serie, editeur,date_edition,prix)
VALUES
('2-203-00117-8','L''Affaire Tournesol',2,7,'1956-03-12',8);

INSERT INTO bd3.albums
(isbn,titre,serie, editeur,date_edition,prix)
VALUES
('2-203-12345-6','Vol 714 pour Sydney',2,7,'1968-02-04',8);

INSERT INTO bd3.albums
(isbn,titre,serie, editeur,date_edition,prix)
VALUES
('2-87097-002-1','Le Secret de l''Espadon tome 1',7,3,'1984-01-15',9);

INSERT INTO bd3.albums
(isbn,titre,serie, editeur,date_edition,prix)
VALUES
('2-87097-004-8','Le Secret de L''Espadon tome 2',7,3,'1985-02-22',9);

INSERT INTO bd3.albums
(isbn,titre,serie, editeur,date_edition,prix)
VALUES
('2-87097-005-6','Le Secret de L''Espadon tome 3',7,3,'1986-03-29',9);

INSERT INTO bd3.albums
(isbn,titre,serie, editeur,date_edition,prix)
VALUES
('2-205-00921-4','Obélix et compagnie',6,6,'1976-09-01',6);

INSERT INTO bd3.albums
(isbn,titre,serie, editeur,date_edition,prix)
VALUES
('2-86497-020-1','Astérix chez Rahazade',6,1,'1987-11-14',6);

INSERT INTO bd3.albums
(isbn,titre,serie, editeur,date_edition,prix)
VALUES
('2-205-01144-8','Le Fil qui chante',1,2,'1977-12-31',5);

INSERT INTO bd3.albums
(isbn,titre,serie, editeur,date_edition,prix)
VALUES
('2-205-00517-0','Canyon Apache',1,4,'1975-09-18',8);

INSERT INTO bd3.albums
(isbn,titre,serie, editeur,date_edition,prix)
VALUES
('2-258-03431-0','Adieu Monde Cruel!',10,9,'1991-01-01',9);

INSERT INTO bd3.albums
(isbn,titre,serie, editeur,date_edition,prix)
VALUES
('2-8001-2850-X','Captives à bord',NULL,4,'1999-10-01',12);

INSERT INTO bd3.albums
(isbn,titre,serie, editeur,date_edition,prix)
VALUES
('2-7234-9164-1','La quête d''Ewilan : d''un monde à l''autre',NULL,11,'2013-10-16',15);

INSERT INTO bd3.albums
(isbn,titre,serie, editeur,date_edition,prix)
VALUES
('2-8036-1079-5','Histoire sans héros',NULL,6,NULL,16);

INSERT INTO bd3.albums
(isbn,titre,serie, editeur,date_edition,prix)
VALUES
('2-8649-7199-3','La galère d''Obélix',6,1,'1996-10-10',12.4);


INSERT INTO bd3.albums
(isbn,titre,serie, editeur,date_edition,prix)
VALUES
('2-8649-7199-4','La galère d''Obélix',6,1,'1996-10-10',12.4);

INSERT INTO bd3.albums
(isbn,titre,serie, editeur,date_edition,prix)
VALUES
('2-8649-7266-2','Astérix chez les Pictes',6,1,'2013-10-24',10.5);

INSERT INTO bd3.albums
(isbn,titre,serie, editeur,date_edition,prix)
VALUES
('1-0347-4357-5','Bad cave',11,4,'2019-10-31',11.9);

INSERT INTO bd3.albums
(isbn,titre,serie, editeur,date_edition,prix)
VALUES
('1-0347-4914-0','On ne parle pas la bouche pleine !',12,4,'2022-10-14',11.9);

INSERT INTO bd3.albums
(isbn,titre,serie,editeur,date_edition,prix)
VALUES
('1-0347-3125-1','La vérité sur tout',12,4,'2019-11-15',11.9);

INSERT INTO bd3.albums
(isbn,titre,serie, editeur,date_edition,prix)
VALUES
('2-8649-7596-3','Pas de quartier pour le latin !',13,1,'2021-06-16',8.99);

INSERT INTO bd3.albums
(isbn, titre, serie,  editeur, date_edition, prix)
VALUES ('1-0327-1144-6', 'De la seconde A au OFA', 14, 12, '2022-07-07', 6.6);

INSERT INTO bd3.albums (isbn, titre, serie, editeur, date_edition, prix)
VALUES ('2-258-03438-8', 'En avant, tête de thon !', 10, 9, '1991-10-01', 10);

INSERT INTO bd3.albums (isbn, titre, serie, editeur, date_edition, prix)
VALUES ('1-0347-5432-8', 'Deep impact', 11, 4, '2021-01-15', 12.4);

INSERT INTO bd3.albums (isbn, titre, serie, editeur, date_edition, prix)
VALUES ('1-0347-6312-2', 'Silence of the lamps', null, 4, '2022-11-15', 12.9);

INSERT INTO bd3.albums (isbn, titre, serie, editeur, date_edition, prix)
VALUES ('2-8001-5695-8', 'T''es gonflé !', 11, 4, '2012-11-02', 12.5);

INSERT INTO bd3.albums (isbn, titre, serie, editeur, date_edition, prix)
VALUES ('2-8001-4707-9', 'Tiens-toi droit !', 12, 4, '2010-11-04', 12.5);

INSERT INTO bd3.albums (isbn, titre, serie, editeur, date_edition, prix)
VALUES ('2-9306-1825-8', 'Cold case affaires glacées', 12, 4, '2012-08-04', 11.6);

INSERT INTO bd3.albums (isbn, titre, serie, editeur, date_edition, prix)
VALUES ('2-9306-1814-2', 'Only for your eyes', 12, 4, '2011-11-21', 11.6);

INSERT INTO bd3.albums (isbn, titre, serie, editeur, date_edition, prix)
VALUES ('2-9306-1805-0', 'Sound of silence', 12, 4, '2011-03-21', 10.9);


--noel */
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-87097-055-9',14,'s');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-87097-055-9',14,'d');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-87097-055-9',14,'c');

--la fiancée de Lucky Luke*/
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-205-03043-4',16,'s');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-205-03043-4',15,'d');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-205-03043-4',16,'c');

--nitroglycérine*/
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-88257-000-4',16,'s');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-88257-000-4',15,'d');

-- ma dalton*/
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-205-00585-5',2,'s');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-205-00585-5',15,'d');

--la guérison des dalton*/
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-205-00920-6',2,'s');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-205-00920-6',15,'d');

--l'oreille cassée*/
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-203-00105-4',3,'s');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-203-00105-4',3,'d');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-203-00105-4',3,'c');

--les cigares du pharaon*/
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-203-00103-8',3,'s');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-203-00103-8',3,'d');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-203-00103-8',3,'c');

--le sceptre d'ottokar*/
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-203-00107-0',3,'s');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-203-00107-0',3,'d');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-203-00107-0',3,'c');

--gaffe à lagaffe*/
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-908-46271-0',4,'s');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-908-46271-0',4,'d');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-908-46271-0',12,'c');

--la saga des gaffes*/
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-8001-0955-6',4,'s');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-8001-0955-6',4,'d');

--le cas lagaffe*/
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-8001-0091-5',4,'d');

--Spirou et les hommes bulles*/
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-8001-0019-2',4,'s');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-8001-0019-2',4,'d');

--l'ombre du Z*/
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-8001-0018-4',13,'s');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-8001-0018-4',4,'d');

--Z comme Zorglub*/
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-8001-0017-6',4,'d');

--voyageur mezo*/
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-8001-0015-X',4,'d');

--idées noires*/
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-895-00012-3',4,'d');

--modeste et pompon*/
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-8035-0029-9',4,'d');

--l'odyssée d'astérix*/
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-86497-004-X',1,'s');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-86497-004-X',1,'d');

--astérix le gaulois*/
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-205-00096-9',2,'s');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-205-00096-9',1,'d');

--les lauriers de césar*/
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-205-00600-2',1,'d');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-205-00600-2',2,'s');

--astérix légionnaire*/
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-205-00230-9',1,'d');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-205-00230-9',2,'s');

--les 3 formules du professeur Sato*/
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-87097-017-X',5,'s');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-87097-017-X',5,'d');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-87097-017-X',6,'c');

-- les aventures complètes d'Oum papah*/
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-152-12345-X',1,'d');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-152-12345-X',2,'s');

--coke en stock*/
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-203-00109-0',3,'s');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-203-00109-0',3,'c');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-203-00109-0',3,'d');

--astérix chez les belges*/
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-205-01150-2',1,'d');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-205-01150-2',2,'s');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-205-01150-2',1,'c');

--grande pyramide I*/
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-87097-009-9',5,'s');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-87097-009-9',5,'d');

-- grande pyramide II*/
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-87097-008-0',5,'s');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-87097-008-0',5,'d');

--marque jaune*/
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-87097-010-2',5,'s');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-87097-010-2',5,'d');

--affaire françis blake*/
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-87097-043-9',10,'s');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-87097-043-9',11,'d');

--voronov I*/
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-87097-052-8',7,'s');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-87097-052-8',8,'d');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-87097-052-8',9,'c');

--voronov II*/
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-87097-178-8',7,'s');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-87097-178-8',8,'d');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-87097-178-8',9,'c');

--zeke raconte...*/
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-8001-2900-x',14,'s');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-8001-2900-x',14,'d');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-8001-2900-x',14,'c');

--tokyo*/
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-8021-3900-x',10,'d');

--derniere*/
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-8031-3900-6',17,'d');

-- obelix 2-205-00921-4*/
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-205-00921-4',2,'s');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-205-00921-4',1,'d');

-- rahazade  2-86497-020-1*/
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-86497-020-1',1,'s');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-86497-020-1',1,'d');


-- secret 1    2-87097-002-1*/
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-87097-002-1',5,'s');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-87097-002-1',5,'d');

--secret2	   2-87097-004-8*/
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-87097-004-8',5,'s');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-87097-004-8',5,'d');

--secret3		2-87097-005-6*/
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-87097-005-6',5,'s');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-87097-005-6',5,'d');

--canyon apache	2-205-00517-0*/
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-205-00517-0',2,'s');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-205-00517-0',15,'d');

--fil chante		2-205-01144-8*/
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-205-01144-8',2,'s');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-205-01144-8',15,'d');

--affaire tournesol	2-203-00117-8*/
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-203-00117-8',3,'s');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-203-00117-8',3,'c');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-203-00117-8',3,'d');

--picaros		2-203-00123-2*/
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-203-00123-2',3,'s');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-203-00123-2',3,'c');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-203-00123-2',3,'d');

--714		2-203-12345-6*/
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-203-12345-6',3,'s');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-203-12345-6',3,'c');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-203-12345-6',3,'d');

--monde cruel - pas de participations

-- Captives à bord 2-8001-2850-X */

INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-8001-2850-X',18,'s');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-8001-2850-X',18,'c');

-- Ewilan 2-7234-9164-1 */
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-7234-9164-1',19,'s');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-7234-9164-1',20,'d');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-7234-9164-1',21,'c');

--Histoire sans héros 2-8036-1079-5
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-8036-1079-5',11,'s');

--La galère d'Obélix  2-8649-7199-3
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-8649-7199-3',1,'s');

--La galère d'Obélix  2-8649-7199-4
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-8649-7199-4',1,'s');

--Astérix chez les Pictes  2-8649-7266-2
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-8649-7266-2',22,'s');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-8649-7266-2',23,'d');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-8649-7266-2',1,'c');

--Bad Cave 1-0347-4357-5
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('1-0347-4357-5',24,'d');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('1-0347-4357-5',24,'c');

--On ne parle pas la bouche pleine 1-0347-4914-0
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('1-0347-4914-0',25,'s');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('1-0347-4914-0',25,'d');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('1-0347-4914-0',25,'c');

-- La vérité sur tout ! 1-0347-3125-1
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('1-0347-3125-1',25,'s');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('1-0347-3125-1',25,'d');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('1-0347-3125-1',25,'c');

--Pas de quartier pour le latin ! 2-8649-7596-3
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-8649-7596-3',26,'c');

-- De la seconde A aux OFA 1-0327-1144-6
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('1-0327-1144-6',27,'s');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('1-0327-1144-6',27,'d');

--En avant, tête de thon ! - pas de participations

--Deep impact 1-0347-5432-8
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('1-0347-5432-8',24,'s');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('1-0347-5432-8',31,'s');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('1-0347-5432-8',24,'d');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('1-0347-5432-8',29,'d');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('1-0347-5432-8',30,'c');

--Silence of tge lamps 1-0347-6312-2
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('1-0347-6312-2',24,'s');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('1-0347-6312-2',31,'s');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('1-0347-6312-2',34,'s');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('1-0347-6312-2',33,'c');

--T'es gonflé 2-8001-5695-8
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-8001-5695-8',25,'s');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-8001-5695-8',35,'c');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-8001-5695-8',32,'c');

--Tiens-toi droit ! 2-8001-4707-9
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-8001-4707-9',25,'s');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-8001-4707-9',25,'d');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-8001-4707-9',32,'d');

-- Cold case affaires glacées 2-9306-1825-8
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-9306-1825-8',24,'s');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-9306-1825-8',29,'d');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-9306-1825-8',30,'c');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-9306-1825-8',33,'c');

--Only for your eyes 2-9306-1814-2
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-9306-1814-2',24,'d');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-9306-1814-2',29,'d');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-9306-1814-2',30,'c');

--Sound of silence 2-9306-1805-0
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-9306-1805-0',24,'s');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-9306-1805-0',31,'s');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-9306-1805-0',34,'s');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-9306-1805-0',24,'d');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-9306-1805-0',29,'d');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-9306-1805-0',30,'c');
INSERT INTO bd3.participations (isbn, auteur,role)
VALUES ('2-9306-1805-0',33,'c');
