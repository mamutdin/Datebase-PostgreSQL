INSERT INTO singers (singer_name)
	VALUES ('Metallica'), ('Scorpions'), ('Imagine Dragons'),
			('Би-2'), ('Zivert'), ('BTS'), 
			('Eminem'), ('Frank Sinatra')

INSERT INTO genres (genre_name)
	VALUES ('Rock'), ('Pop'), ('Rap'),
			('Heavy metal'), ('Jazz')

INSERT INTO albums (album_name, release_year)
	VALUES ('Death Magnetic', 2008), ('Rock Believer', 2018), ('Origins', 2018),	
			('Горизонт событий', 2017),	('Vinyl 1', 2019),	('Face Yourself', 2018),	
			('Kamikaze', 2018),	('Songs for Swingin Lovers', 1956)

INSERT INTO tracks (album_id, track_name, track_duration)
	VALUES (1, 'The Unforgiven III', 7.8), (1, 'All Nightmare Long', 7.9),
			(2, 'Shining of Your Soul', 4), (2, 'Seventh Sun', 5.5),	
			(3, 'Machine', 3), (3, 'Natural', 3.2),	
			(4, 'Лайки', 3.5), (4, 'Алиса', 3.7),	
			(5, 'Beverly Hills', 3.7), (5, 'Fly', 3.2),	
			(6, 'Dont Leave Me', 3.8), (6, 'Crystal Snow', 5.5),	
			(7, 'Venom', 4.5), (7, 'Fall', 4.3),	
			(8, 'Old Devil Moon', 4),
			(1, 'Unknown Track', 3)
			
INSERT INTO collections (collection_name, release_year)
	VALUES ('Rock till we die', 2018), ('Pop and K-pop', 2017), ('Soundtracks', 2020),	
			('Russian collection', 2021),	('Зарубежные треки', 2019),
			('Travelling', 2015), ('Sport', 2018), ('4Gaming', 2019)
			
INSERT INTO album_singer  (album_id, singer_id)
	VALUES (1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), 
			(7, 7), (8, 8)
	
INSERT INTO genre_singer  (genre_id, singer_id)
	VALUES (1, 1), (1, 2), (1, 3), (1, 4), (2, 3), (2, 5), 
			(2, 6), (3, 7), (4, 1), (4, 2), (5, 8)

INSERT INTO collection_track  (collection_id, track_id)
	VALUES (1, 1), (1, 2), (1, 3), (1, 4), (1, 5), (1, 6), (1, 7), (1, 8), 
			(2, 9), (2, 10), (2, 11), (2, 12), 
			(3, 13), (3, 5), (3, 9), 
			(4, 7), (4, 8), (4, 9), (4, 10), 
			(5, 1), (5, 2), (5, 3), (5, 4), (5, 5), (5, 6), 
			(5, 11), (5, 12), (5, 13), (5, 14), (5, 15), 
			(6, 3), (6, 6), (6, 9), (6, 15), (6, 13), 
			(7, 1), (7, 2), (7, 3), (7, 4), (7, 13), 
			(8, 1), (8, 3), (8, 15), (8, 6), (8, 13)