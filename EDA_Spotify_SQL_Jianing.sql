-- Question 1. 
--Usually if talk about songs, we would consider it is 2-5 min. Is there any tracks in this dataset that is extremely long, e.g. longer than 8 min?  Please display the information.

SELECT * from spotify where duration_ms >= 480000  -- 8 min is 480 s ( 480000 ms)


-- Question 2. 
--Some names of songs contain "E" on the media, which are containing  the explicit words in th lyrics. Is there any correlaltion of that with popoulartiy, display it with popularity descending.

SELECT  * FROM spotify 
WHERE explicit = "True"
order by popularity DESC


-- Question 3. 
--If we look at explicit and genre, display the genre alphabetically.

SELECT count(*), track_genre  from spotify 
where explicit = "True"
Group by track_genre  order by track_genre ASC
