INSERT INTO Singer(id, name)
VALUES(1, 'Halsey'),
      (2, 'K/DA'),
      (3, 'Madison Beer'),
      (4, 'ZAQ'),
      (5, 'The Beatles'),
      (6, 'Joji'),
      (7, 'Selena Gomez'),
      (8, 'Christina Aguilera');


INSERT INTO Album(id, name, year)
VALUES(1, 'ALL OUT', 2020),
      (2, 'Badlands', 2015),
      (3, 'Do Lot', 2020),
      (4, 'Manic', 2020),
      (5, 'Back to Basics', 2006),
      (6, 'BALLADS 1', 2018),
      (7, 'Revival', 2015),
      (8, 'Let it be', 1970);


INSERT INTO Song(id, name, albumId, duration)
VALUES(1, 'Bar E', 3, 156),
      (2, 'Be Kind', 4, 177),
      (3, 'Colors', 2, 249),
      (4, 'More', 1, 217),
      (5, 'New Americana', 2, 184),
      (6, 'Nukteler', 3, 180),
      (7, 'Villain', 1, 199),
      (8, 'Come together', 8, 260),
      (9, 'The End', 8, 142),
      (10, 'Good for you', 7, 221),
      (11, 'Perfect', 7, 244),
      (12, 'Slow dancing in the dark', 6, 219),
      (13, 'Yeah Right', 6, 174),
      (14, 'Hurt', 5, 243),
      (15, 'Candyman', 5, 194);

INSERT INTO Genre(id, name)
VALUES(1, 'hip-hop'),
      (2, 'k-pop'),
      (3, 'pop'),
      (4, 'rap'),
      (5, 'rock'),
      (6, 'R&B');

INSERT INTO Collection(id, name, year)
VALUES(1, 'League of Legends', 2020),
      (2, 'This is Halsey', 2020),
      (3, 'ZAQ', 2020),
      (4, 'A decade of hits', 2008), 
      (5, 'Same old love (Remixes)', 2015),
      (6, 'Past Masters', 1988),
      (7, 'The Beatles 1962-1966', 1973),
      (8, 'Christmas hits', 2019), 
      (9, 'Joji', 2018);




INSERT INTO SingerAlbum(singerId, albumId)
VALUES(2, 1),
      (3, 1),
      (1, 2),
      (4, 3),
      (1, 4),
      (5, 8),
      (6, 6),
      (7, 7),
      (8, 5);


INSERT INTO SingerGenre(singerId, singerId)
VALUES(1, 3),
      (2, 2),
      (2, 3),
      (3, 3),
      (4, 3),
      (4, 4),
      (5, 5),
      (6, 6),
      (7, 3),
      (8, 3);


INSERT INTO SongCollection(songId, collectionId)
VALUES(1, 3),
      (2, 2),
      (3, 2),
      (4, 1),
      (5, 2),
      (6, 3),
      (7, 1),
      (8, 6),
      (9,7),
      (10, 5),
      (11, 5),
      (12, 9),
      (13, 9),
      (14, 4),
      (15, 8);
