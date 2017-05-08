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
SELECT title, artist_name, year, duration FROM songs
```
[Our clean dataset for exploration](https://github.com/AeKana/Portfolio/blob/master/Million-Song-Dataset/cleandata.csv)
## Variability
### Distribution of songs
Counting the number of songs per year by each unique artist in ascending name order. [Here](https://github.com/AeKana/Portfolio/blob/master/Million-Song-Dataset/artist_year.csv)

```
SELECT artist_name, year, COUNT (*) songs_count FROM songs
GROUP BY artist_name, year
ORDER BY artist_name ASC;
```
Showing the song and duration (secs) in each year by artist. [Here](https://github.com/AeKana/Portfolio/blob/master/Million-Song-Dataset/artist_duration.csv)

```
SELECT artist_name, title, year, duration FROM songs
GROUP BY artist_name, year, duration;
```
Calculating the average song duration rounded (2 decimal places) per year. [Here](https://github.com/AeKana/Portfolio/blob/master/Million-Song-Dataset/avg_song.csv)

```
SELECT year, ROUND(AVG (duration),2) as avg_duration FROM songs
GROUP BY year;
```
![alt text](https://github.com/AeKana/Portfolio/blob/master/Million-Song-Dataset/average_song.png)

As we can see, there are roughly 2 clusters of average song duration. During the late 1920's to mid 1960's the average duration of songs was about 160-200 secs. Starting from the 1970's, song duration increased dramatically ranging on average 230-250 secs. Perhaps as the years increase, we demand longer songs? 

## Reference
Thierry Bertin-Mahieux, Daniel P.W. Ellis, Brian Whitman, and Paul Lamere. 
The Million Song Dataset. In Proceedings of the 12th International Society
for Music Information Retrieval Conference (ISMIR 2011), 2011.
