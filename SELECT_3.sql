-- Названия альбомов, в которых присутствуют исполнители более чем одного жанра
SELECT a.album_name
FROM albums a
JOIN artist_album aa ON a.album_id = aa.album_id
JOIN (
    SELECT artist_id, COUNT(DISTINCT genre_id) AS genres_count
    FROM genre_artist
    GROUP BY artist_id
    HAVING COUNT(DISTINCT genre_id) > 1
) AS multi_genre_artists ON aa.artist_id = multi_genre_artists.artist_id;

-- Наименования треков, которые не входят в сборники
SELECT track_name
FROM tracks
WHERE track_id NOT IN (
    SELECT track_id
    FROM track_compilation
);

-- Исполнитель или исполнители, написавшие самый короткий по продолжительности трек
SELECT artist_name, track_name, duration
FROM artists
JOIN artist_album aa ON artists.artist_id = aa.artist_id
JOIN tracks ON aa.album_id = tracks.album_id
WHERE duration = (
    SELECT MIN(duration)
    FROM tracks
);

-- Названия альбомов, содержащих наименьшее количество треков
SELECT album_name
FROM albums
WHERE album_id = (
    SELECT album_id
    FROM tracks
    GROUP BY album_id
    ORDER BY COUNT(*) ASC
    LIMIT 1
);
