-- Название и продолжительность самого длительного трека
SELECT track_name, duration
FROM tracks
WHERE duration = (
    SELECT MAX(duration)
    FROM tracks
);

-- Название треков, продолжительность которых не менее 3,5 минут
SELECT track_name
FROM tracks
WHERE duration >= 210;

-- Названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT compilation_name
FROM compilations
WHERE release_year BETWEEN '2018-01-01' AND '2020-12-31';

-- Исполнители, чьё имя состоит из одного слова
SELECT artist_name
FROM artists
WHERE artist_name NOT LIKE '% %';

-- Название треков, которые содержат слово «мой» или «my»
SELECT track_name
FROM tracks
WHERE LOWER(track_name) LIKE '%мой%' OR LOWER(track_name) LIKE '%my%';
