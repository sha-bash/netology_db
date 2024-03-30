-- Вставка новой записи исполнителя с именем из одного слова
INSERT INTO artists (artist_name)
VALUES ('NewArtist');

-- Вставка новой записи трека с названием содержащим слово "мой" или "my"
INSERT INTO tracks (album_id, duration, track_name)
VALUES (1, 200, 'My New Song');
