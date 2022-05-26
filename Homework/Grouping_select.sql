SELECT genre_name, count(singer_id) FROM genre_singer gs 
		JOIN genres g ON gs.genre_id = g.id 
		GROUP BY genre_name

SELECT count(t.id) FROM tracks t 
		JOIN albums a ON t.album_id = a.id 
		WHERE a.release_year BETWEEN 2019 AND 2020

SELECT a.album_name, avg(t.track_duration) FROM tracks t 
		JOIN albums a ON t.album_id = a.id 
		GROUP BY a.album_name
		
SELECT singer_name FROM singers s
		JOIN album_singer as2 ON s.id = as2.singer_id 
		JOIN albums a ON as2.album_id = a.id 
		WHERE a.release_year != 2020

SELECT collection_name FROM collections c 
		JOIN collection_track ct  ON c.id = ct.collection_id  
		JOIN tracks t  ON ct.track_id = t.id 
		JOIN albums a ON t.album_id = a.id 
		JOIN album_singer as2 ON a.id = as2.album_id 
		JOIN singers s ON as2.singer_id = s.id 
		WHERE s.singer_name = 'Metallica'
		GROUP BY collection_name

SELECT a2.album_name  FROM albums a2 
		JOIN album_singer as2  ON a2.id = as2.album_id  
		JOIN singers s  ON as2.singer_id = s.id 
		JOIN genre_singer gs  ON gs.singer_id = s.id
		GROUP BY a2.album_name
		HAVING count(gs.singer_id) > 1

SELECT t.track_name FROM tracks t 
		LEFT JOIN collection_track ct ON t.id = ct.track_id
		WHERE ct.track_id IS NULL 
			
SELECT singer_name FROM singers s 
		JOIN album_singer as2 ON s.id = as2.singer_id 
		JOIN albums a ON a.id = as2.album_id 
		JOIN tracks t ON t.album_id = a.id 
		WHERE t.track_duration = (SELECT min(t.track_duration) FROM tracks t) 

SELECT  a.album_name FROM albums a 
		JOIN tracks t ON t.album_id = a.id 
		GROUP BY a.album_name
		HAVING count(album_id) = 
		(SELECT min(count2) FROM 
					(SELECT a.album_name, count(album_id) count2 
						FROM albums a 
						JOIN tracks t ON t.album_id = a.id 
						GROUP BY a.album_name)
		new_table)
		
	

		


		
		
 
		
