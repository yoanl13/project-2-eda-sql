SELECT artists, COUNT(*) AS total_tracks FROM cleaned_data GROUP BY artists ORDER BY total_tracks DESC LIMIT 20;
SELECT artists, COUNT(*) AS total_tracks FROM cleaned_data GROUP BY artists HAVING COUNT(*) > 20 ORDER BY total_tracks ASC;
SELECT artists, COUNT(*) AS tracks FROM cleaned_data GROUP BY artists HAVING COUNT(*) == 1;
SELECT CASE WHEN tempo< 122 THEN 'Slow' WHEN tempo> 122 THEN 'Fast' END AS tempo_group, AVG(danceability) AS avg_danceability FROM cleaned_data GROUP BY tempo_group;

-- How popular are the artists by average popularity?
SELECT artists, AVG(popularity) AS avg_popularity FROM cleaned_data GROUP BY artists ORDER BY avg_popularity DESC LIMIT 20; 

--How average danceability relates to each of the track genre?
SELECT track_genre, AVG(danceability) AS avg_danceability FROM cleaned_data GROUP BY track_genre ORDER BY avg_danceability; 

--How many songs are available in each genre?
SELECT track_genre, COUNT(*) as total_songs FROM cleaned_data GROUP BY track_genre ORDER BY total_songs DESC; 
