CREATE TABLE singers (
	id SERIAL PRIMARY KEY, 
	singer_name VARCHAR(40) NOT NULL
);

CREATE TABLE genres (
	id SERIAL PRIMARY KEY, 
	genre_name VARCHAR(40) NOT NULL
);

CREATE TABLE albums (
	id SERIAL PRIMARY KEY,
	album_name VARCHAR(100) NOT NULL, 
	release_year INTEGER CHECK(release_year >= 0)
);

CREATE TABLE tracks (
	id SERIAL PRIMARY KEY,
	album_id INTEGER REFERENCES albums(id), 
	track_name TEXT, 
	track_duration INTEGER CHECK(track_duration >= 0)
);

CREATE TABLE genre_singer (
	genre_id INTEGER REFERENCES genres(id), 
	singer_id INTEGER REFERENCES singers(id),
	CONSTRAINT pk PRIMARY KEY (genre_id, singer_id)
);

CREATE TABLE album_singer (
	album_id INTEGER REFERENCES albums(id), 
	singer_id INTEGER REFERENCES singers(id),
	CONSTRAINT pk2 PRIMARY KEY (album_id, singer_id)
);

CREATE TABLE collections (
	id SERIAL PRIMARY KEY,
	collection_name VARCHAR(100) NOT NULL, 
	release_year INTEGER CHECK(release_year >= 0)
);

CREATE TABLE collection_track (
	collection_id INTEGER REFERENCES collections(id), 
	track_id INTEGER REFERENCES tracks(id),
	CONSTRAINT pk3 PRIMARY KEY (collection_id, track_id)
);