SELECT 'Name and release year of albums released in 2018:';
SELECT name, year FROM Album
WHERE year = 2018;
SELECT '';

SELECT 'Name and duration of the longest song:';
SELECT name, MAX(duration) AS MaxDuration 
FROM Song;
SELECT '';

SELECT 'Name of song, the duration of which is at least 3.5 minutes:';
SELECT name, duration FROM Song
WHERE duration >= 210;
SELECT '';

SELECT 'Titles of collections published in the period from 2018 to 2020 inclusive:';
SELECT name FROM Collection
WHERE year BETWEEN 2018 AND 2020;
SELECT '';

SELECT 'Singer whose name consists of 1 word:';
SELECT name FROM Singer
WHERE name NOT LIKE '% %';
SELECT '';

SELECT 'Name of the song that contain the word "my" / "мой":';
SELECT name FROM Song   
WHERE name LIKE '%my%' OR '%мой%';
SELECT '';

