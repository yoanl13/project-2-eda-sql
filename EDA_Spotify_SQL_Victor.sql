-- 1. What are the top 3 loudest and top 3 quietest music genres on average?
SELECT * FROM (SELECT track_genre AS "Genre", AVG(loudness) AS "Loudness" FROM Spotify_Tracks_Dataset_Clean GROUP BY track_genre ORDER BY loudness ASC LIMIT 3) UNION ALL
SELECT * FROM (SELECT track_genre AS "Genre", AVG(loudness) AS "Loudness" FROM Spotify_Tracks_Dataset_Clean GROUP BY track_genre ORDER BY loudness DESC LIMIT 3) ORDER BY "Loudness" DESC

-- 2. How about the top 20 loudest songs? Are any of them from the top 3 loudest genres?
SELECT track_genre AS "Genre", loudness AS "Loudness", track_name AS "Song", artists AS "Artist" FROM Spotify_Tracks_Dataset_Clean ORDER BY loudness DESC LIMIT 20

-- 3. And the quietest ones? It's quite a fun insight you'll observe there :)
SELECT track_genre AS "Genre", loudness AS "Loudness", track_name AS "Song", artists AS "Artist" FROM Spotify_Tracks_Dataset_Clean ORDER BY loudness ASC LIMIT 20