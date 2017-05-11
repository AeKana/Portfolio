"Clean dataset from emtpy values and display the table"

DELETE FROM songs
WHERE year = 0;
SELECT * FROM songs

"Distribution of songs per year by unique artist in ascending name order"

SELECT artist_name, year, COUNT (*) songs_count FROM songs
GROUP BY artist_name, year
ORDER BY artist_name ASC;

"Distribution of song length (secs) per year by artist"

SELECT artist_name, title, year, duration FROM songs
GROUP BY artist_name, year, duration;

"Calculating average song duration rounded per year"

SELECT year, ROUND(AVG (duration),2) as avg_duration FROM songs
GROUP BY year;