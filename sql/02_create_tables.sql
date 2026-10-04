USE movie_analysis;

CREATE TABLE IF NOT EXISTS movies(
    movie_id INT AUTO_INCREMENT PRIMARY KEY,
    release_year YEAR,
    title VARCHAR(255) NOT NULL,
    popularity DOUBLE,
    vote_count INT,
    vote_average DECIMAL(3,1),
    original_language VARCHAR(20),
    vote_average_category VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS genres(
    genre_id INT AUTO_INCREMENT PRIMARY KEY,
    genre_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS movie_genres(
    movie_id INT NOT NULL,
    genre_id INT NOT NULL,
    PRIMARY KEY (movie_id,genre_id),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
    FOREIGN KEY (genre_id) REFERENCES genres(genre_id)
);