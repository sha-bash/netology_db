CREATE TABLE IF NOT EXISTS genres (
    genre_id SERIAL PRIMARY KEY,
    genre_name VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS artists (
    artist_id SERIAL PRIMARY KEY,
    artist_name VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS albums (
    album_id SERIAL PRIMARY KEY,
    date_release DATE,
    album_name VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS tracks (
    track_id SERIAL PRIMARY KEY,
    album_id INTEGER NOT NULL REFERENCES albums(album_id),
    duration INTEGER,
    track_name VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS compilations (
    compilation_id SERIAL PRIMARY KEY,
    release_year DATE,
    compilation_name VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS genre_artist (
    genre_id INTEGER NOT NULL REFERENCES genres(genre_id),
    artist_id INTEGER NOT NULL REFERENCES artists(artist_id),
    PRIMARY KEY (genre_id, artist_id)
);

CREATE TABLE IF NOT EXISTS artist_album (
    artist_id INTEGER NOT NULL REFERENCES artists(artist_id),
    album_id INTEGER NOT NULL REFERENCES albums(album_id),
    PRIMARY KEY (artist_id, album_id)
);

CREATE TABLE IF NOT EXISTS track_compilation (
    track_id INTEGER NOT NULL REFERENCES tracks(track_id),
    compilation_id INTEGER NOT NULL REFERENCES compilations(compilation_id),
    PRIMARY KEY (track_id, compilation_id)
);
