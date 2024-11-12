CREATE TABLE IF NOT EXISTS genres (
	id_genre BIGINT UNIQUE PRIMARY KEY,
	genre_name VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS executors (
	id_executor BIGINT UNIQUE NOT NULL PRIMARY KEY,
	executor_name VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS albums (
	id_album BIGINT UNIQUE NOT NULL PRIMARY KEY,
	aulbum_name VARCHAR(50) NOT NULL,
	release_album DATE NOT null
	CONSTRAINT chk_release_album CHECK (release_album > '1900-01-01')
);

CREATE TABLE IF NOT EXISTS GenresExecutors (
	id_genre BIGINT NOT NULL,
	id_executor BIGINT NOT NULL,
	PRIMARY KEY(id_genre, id_executor),
	FOREIGN KEY (id_genre) REFERENCES genres(id_genre),
	FOREIGN KEY (id_executor) REFERENCES executors(id_executor)
);

CREATE TABLE IF NOT EXISTS ExecutorsAlbums (
	id_executor BIGINT NOT NULL,
	id_album BIGINT NOT NULL,
	PRIMARY KEY(id_executor, id_album),
	FOREIGN KEY (id_executor) REFERENCES executors(id_executor),
	FOREIGN KEY (id_album) REFERENCES albums(id_album)
);

CREATE TABLE IF NOT EXISTS tracks (
	id_track BIGINT UNIQUE NOT NULL PRIMARY KEY,
	track_name VARCHAR(50) NOT NULL,
	duration INTEGER NOT NULL,
	id_album BIGINT NOT NULL,
	CONSTRAINT chk_duration CHECK (duration < 600)
);

CREATE TABLE IF NOT EXISTS collections (
	id_collections BIGINT UNIQUE NOT NULL PRIMARY KEY,
	collection_name VARCHAR(50) NOT NULL,
	release_collection DATE NOT NULL,
	CONSTRAINT chk_release_collection CHECK (release_collection > '2010-01-01')
);

CREATE TABLE IF NOT EXISTS CollectionsTracks (
	id_collections BIGINT NOT NULL,
	id_track BIGINT NOT NULL,
	PRIMARY KEY (id_collections, id_track),
	FOREIGN KEY (id_collections) REFERENCES collections(id_collections),
	FOREIGN KEY (id_track) REFERENCES tracks(id_track)
);











