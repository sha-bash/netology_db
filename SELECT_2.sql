-- Количество исполнителей в каждом жанре
SELECT g.genre_name, COUNT(ga.artist_id) AS artist_count
FROM genre_artist ga
JOIN genres g ON ga.genre_id = g.genre_id
GROUP BY g.genre_name;

-- Количество треков, вошедших в альбомы 2019–2020 годов
SELECT COUNT(*)
FROM tracks t
JOIN albums a ON t.album_id = a.album_id
WHERE a.date_release BETWEEN '2019-01-01' AND '2020-12-31';

-- Средняя продолжительность треков по каждому альбому
SELECT album_id, AVG(duration) AS avg_duration
FROM tracks
GROUP BY album_id;

-- Все исполнители, которые не выпустили альбомы в 2020 году
SELECT DISTINCT artist_name
FROM artists
WHERE artist_id NOT IN (
    SELECT DISTINCT aa.artist_id
    FROM artist_album aa
    JOIN albums a ON aa.album_id = a.album_id
    WHERE EXTRACT(YEAR FROM a.date_release) = 2020
);

-- Названия сборников, в которых присутствует определенный исполнитель (Artist A)
SELECT c.compilation_name
FROM compilations c
JOIN track_compilation tc ON c.compilation_id = tc.compilation_id
JOIN tracks t ON tc.track_id = t.track_id
JOIN artist_album aa ON t.album_id = aa.album_id
JOIN artists a ON aa.artist_id = a.artist_id
WHERE a.artist_name = 'Artist A';
