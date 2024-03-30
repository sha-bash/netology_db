-- Добавление данных в таблицу `genres`
INSERT INTO genres (genre_name) VALUES ('Pop'), ('Rock'), ('Rap');

-- Добавление данных в таблицу `artists`
INSERT INTO artists (artist_name) VALUES ('Artist A'), ('Artist B'), ('Artist C'), ('Artist D');

-- Добавление данных в таблицу `albums`
INSERT INTO albums (date_release, album_name) VALUES ('2021-01-01', 'Album 1'), ('2020-05-15', 'Album 2'), ('2019-10-20', 'Album 3');

-- Добавление данных в таблицу `tracks`
INSERT INTO tracks (album_id, duration, track_name) VALUES
(1, 180, 'Song 1'),
(1, 210, 'Song 2'),
(2, 185, 'Song 3'),
(2, 195, 'Song 4'),
(3, 200, 'Song 5'),
(3, 220, 'Song 6');

-- Добавление данных в таблицу `compilations`
INSERT INTO compilations (release_year, compilation_name) VALUES ('2021-02-01', 'Compilation 1'), ('2020-03-15', 'Compilation 2'), ('2019-11-20', 'Compilation 3');

-- Добавление данных в таблицу `genre_artist`
INSERT INTO genre_artist (genre_id, artist_id) VALUES
(1, 1), -- Pop - Artist A
(2, 2), -- Rock - Artist B
(3, 3), -- Rap - Artist C
(1, 4); -- Pop - Artist D

-- Добавление данных в таблицу `artist_album`
INSERT INTO artist_album (artist_id, album_id) VALUES
(1, 1), -- Artist A - Album 1
(2, 2), -- Artist B - Album 2
(3, 3), -- Artist C - Album 3
(4, 1); -- Artist D - Album 1

-- Добавление данных в таблицу `track_compilation`
INSERT INTO track_compilation (track_id, compilation_id) VALUES
(1, 1), -- Song 1 - Compilation 1
(2, 1), -- Song 2 - Compilation 1
(3, 2), -- Song 3 - Compilation 2
(4, 2), -- Song 4 - Compilation 2
(5, 3), -- Song 5 - Compilation 3
(6, 3); -- Song 6 - Compilation 3
