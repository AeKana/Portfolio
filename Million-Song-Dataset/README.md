# Million Song Dataset
The Million Songs Collection is a collection of 28 datasets containing audio features and metadata for a million contemporary popular music tracks. However, I used a smaller subset consisting of 10,000 songs. 

Due to the large dataset I am unable to upload it here, but it can be downloaded here.

Million Song Dataset, official website by Thierry Bertin-Mahieux,
available at: http://labrosa.ee.columbia.edu/millionsong/

## Cleaning the data
In this specific dataset, there are songs with the year value of 0 meaning we have missing values. To filter out these missing values I used the following statement:

```
DELETE FROM songs
WHERE year = 0;
SELECT * FROM songs
```
## Variability
### Distribution of songs
Counting the number of songs per year by each unique artist in ascending name order

```
SELECT artist_name, year, COUNT (*) songs_count FROM songs
GROUP BY artist_name, year
ORDER BY artist_name ASC;
```
Counting the song duration (secs) in each year by artist 

```
SELECT artist_name, title, year, duration FROM songs
GROUP BY artist_name, year, duration;
```
Calculating the average song duration rounded (2 decimal places) per year

```
SELECT year, ROUND(AVG (duration),2) as avg_duration FROM songs
GROUP BY year;
```

### Reference
Thierry Bertin-Mahieux, Daniel P.W. Ellis, Brian Whitman, and Paul Lamere. 
The Million Song Dataset. In Proceedings of the 12th International Society
for Music Information Retrieval Conference (ISMIR 2011), 2011.
