SELECT album_name, release_year FROM albums 
		WHERE release_year=2018
		
SELECT track_name,track_duration FROM tracks
WHERE track_duration = (
   SELECT MAX (track_duration) FROM tracks)	
		
SELECT track_name FROM tracks 
		WHERE track_duration >= 3.5

SELECT collection_name FROM collections 
		WHERE release_year BETWEEN 2018 AND 2020
		
SELECT singer_name FROM singers
		WHERE singer_name NOT LIKE '% %'

SELECT track_name FROM tracks 
		WHERE track_name LIKE '%my %' OR track_name LIKE '% my' OR 
			track_name LIKE '%мой %' OR track_name LIKE '% мой'