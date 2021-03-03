SELECT 'The number of singers in each genre:';
SELECT g.name, Count(si.name) FROM Genre g
LEFT JOIN SingerGenre sg on sg.genreId = g.id
LEFT JOIN Singer si on si.id = sg.singerId
GROUP BY g.name
ORDER BY Count(si.id) DESC;
SELECT '';


SELECT 'The number of songs included in the 2019-2020 albums:';
SELECT so.name, a.year FROM Album a
LEFT JOIN Song so on so.albumId = a.id
WHERE (a.year >= 2019) and (a.year <= 2020);
SELECT '';


SELECT 'Average song duration for each album:';
SELECT a.name, Avg(so.duration) FROM Album a
LEFT JOIN Song so on so.albumId = a.id
GROUP BY a.id
ORDER BY Avg(so.duration) DESC;
SELECT '';


SELECT 'Singers who did not release albums in 2020:';
SELECT si.name, a.year FROM Album a
LEFT JOIN SingerAlbum sa on sa.albumId = a.id
LEFT JOIN Singer si on si.id = sa.singerId
WHERE (a.year != 2020);
SELECT '';


SELECT 'Name of collections in which a specific singer is present (The Beatles):';
SELECT c.name FROM Collection c
LEFT JOIN Collection c on c.id = sc.collectionId
LEFT JOIN SongCollection sc on sc.songId = so.id
LEFT JOIN Song so on so.albumId = sa.albumId
LEFT JOIN Album a on a.id = so.album_id
LEFT JOIN SingerAlbum sa on sa.albumId = a.id
LEFT JOIN Singer si on sa.singerId = si.id
WHERE si.name LIKE '%%The Beatles%%'
GROUP BY c.name;
SELECT '';


SELECT 'Name of albums in which there are singers with more than 1 genre:';
SELECT a.name, Count(g.name) FROM Album a
LEFT JOIN SingerAlbum sa on sa.albumId = a.id
LEFT JOIN Singer si on si.id = sa.singerId
LEFT JOIN SingerGenre sg on sg.singerId = si.id
LEFT JOIN Genre g on g.id = sg.genreId
GROUP BY a.name
HAVING Count(g.name) > 1;
SELECT '';


SELECT 'Name of the songs that are not included in the collections:';
SELECT so.name FROM Song so
LEFT JOIN SongCollection sc on sc.songId = so.id
WHERE sc.songId is null;
SELECT '';


SELECT 'Name of singer(s) who wrote the shortest track (theoretically there can be several such tracks):';
SELECT si.name, Min(duration) FROM Song so
LEFT JOIN Album a on a.id = so.albumId
LEFT JOIN SingerAlbum sa on sa.albumId = a.id
LEFT JOIN Singer si on si.id = sa.singerId
ORDER BY Min(duration) DESC;
SELECT '';


SELECT 'Name of the albums containing the smallest number of songs:';
SELECT a.name FROM Album a
LEFT JOIN Song so on so.albumId = a.id
GROUP BY a.name
ORDER BY Min(so.name) DESC;
SELECT '';
