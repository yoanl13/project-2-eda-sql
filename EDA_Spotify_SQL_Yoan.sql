--q1 track names with the word "love" by genre, is it associated with any genre? top 10
SELECT track_genre,count(track_genre) AS TOTAL
FROM cleaned_data 
WHERE track_name 
LIKE "%love%" 
GROUP BY track_genre 
ORDER BY TOTAL DESC
LIMIT 10;

--q2 mean and max of valence by genre, top 5
SELECT track_genre,ROUND(AVG(valence),3) AS Average_valence, MAX(valence) AS Max_valence
FROM cleaned_data  
GROUP BY track_genre 
ORDER BY Average_valence DESC
LIMIT 5;

--q3 mean and min of valence by genre, top 5 ascending
SELECT track_genre,ROUND(AVG(valence),3) AS Average_valence, MIN(valence) AS Min_valence
FROM cleaned_data  
GROUP BY track_genre 
ORDER BY Average_valence
LIMIT 5;