USE movie_analysis;

-- 1. Verify the number of movies 
SELECT COUNT(*) AS movie_count
FROM movies;

-- 2. Check the number of unique genres
SELECT COUNT(*) AS genre_count
FROM genres;

-- 3. Check the number movie-genre relationships
SELECT COUNT(*) AS relationship_count
FROM movie_genres;

-- 4. Preview imported movies 
SELECT * FROM movies LIMIT 5;

-- 5. Verify the movie-genre relationships works 
SELECT m.title, g.genre_name 
FROM movies m 
JOIN movie_genres mg ON m.movie_id = mg.movie_id 
JOIN genres g ON mg.genre_id = g.genre_id
ORDER BY m.movie_id, g.genre_name
LIMIT 15;  