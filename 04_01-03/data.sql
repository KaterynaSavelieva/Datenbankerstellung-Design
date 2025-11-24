USE cd_datenbank;

INSERT INTO Interpreten (Interpret) VALUES
('Adele'),
('Ed Sheeran'),
('Beyoncé'),
('Coldplay'),
('Imagine Dragons'),
('Rammstein'),
('Metallica'),
('Taylor Swift'),
('The Weeknd'),
('Linkin Park'),
('Drake'),
('Lady Gaga'),
('Eminem'),
('Shakira'),
('Sia'),
('OneRepublic'),
('Maroon 5'),
('U2'),
('Billie Eilish'),
('Sam Smith');

INSERT INTO Musikrichtung (Musikrichtung) VALUES
('Pop'),
('Rock'),
('Metal'),
('Hip-Hop'),
('Rap'),
('Classical'),
('EDM'),
('Jazz'),
('Blues'),
('Folk'),
('Indie'),
('K-Pop'),
('R&B'),
('Soul'),
('Reggae'),
('House'),
('Techno'),
('Alternative'),
('Country'),
('Soundtrack');

INSERT INTO CD (CDName, IntNr, MRNr) VALUES
('Golden Melodies', 1, 1),
('Night Waves', 2, 7),
('Electric Heart', 3, 13),
('Skyline Dreams', 4, 11),
('Thunder Beats', 5, 2),
('Feuer & Flamme', 6, 3),
('Black Strings', 7, 9),
('Midnight Stories', 8, 14),
('Urban Nights', 9, 4),
('Broken Silence', 10, 18),
('Flow State', 11, 5),
('Shining Star', 12, 1),
('Revival', 13, 4),
('Energy Rush', 14, 7),
('Wild Motion', 15, 2),
('City Lights', 16, 11),
('Sugar Waves', 17, 1),
('Blue Horizon', 18, 10),
('Dark Bloom', 19, 18),
('Pure Emotion', 20, 19);

INSERT INTO Titel (CDNr, TitelNr, Titel, IntNr, Beurteilung) VALUES
(1,1,'Hello Again',1,4.50),
(1,2,'Soft Rain',1,4.20),
(1,3,'My Story',1,4.90),

(2,1,'Moonlight Ride',2,4.30),
(2,2,'Lost Control',2,4.00),
(2,3,'Shadow Dance',2,3.80),

(3,1,'Electric Love',3,4.70),
(3,2,'Burning Sky',3,4.10),
(3,3,'Fire Queen',3,4.90),

(4,1,'Blue Sky',4,4.20),
(4,2,'Magic Streets',4,4.40),
(4,3,'Northern Lights',4,4.80),

(5,1,'Radioactive Dreams',5,4.50),
(5,2,'Run Wild',5,4.10),
(5,3,'Warrior Spirit',5,4.70),

(6,1,'Deutschland',6,4.80),
(6,2,'Sonne',6,5.00),
(6,3,'Ohne Dich',6,4.90),

(7,1,'Master of Strings',7,4.60),
(7,2,'Black Echo',7,4.40),
(7,3,'Iron Path',7,4.70),

(8,1,'Wildest Days',8,4.60),
(8,2,'Invisible Heart',8,4.30),
(8,3,'Midnight Lover',8,4.90),

(9,1,'Starlight City',9,4.20),
(9,2,'Dream Breaker',9,4.10),
(9,3,'Neon Whisper',9,4.60),

(10,1,'Crawling Again',10,4.90),
(10,2,'Echoes of Life',10,4.70),
(10,3,'Light Within',10,4.60),

(11,1,'Hotline Flow',11,4.30),
(11,2,'City Vibes',11,4.10),
(11,3,'Dark Smoke',11,3.90),

(12,1,'Perfect Illusion',12,4.40),
(12,2,'Diamond Tears',12,4.20),
(12,3,'Starfire',12,4.90),

(13,1,'The Real Slim',13,4.80),
(13,2,'Lose Yourself 2',13,5.00),
(13,3,'Recovery Mode',13,4.70),

(14,1,'La La Vida',14,4.40),
(14,2,'Waka Dance',14,4.20),
(14,3,'Color Dreams',14,4.70),

(15,1,'Big Voice',15,4.20),
(15,2,'Breathe Again',15,4.10),
(15,3,'Alive',15,4.60),

(16,1,'Counting Stars 2',16,4.50),
(16,2,'Runaway City',16,4.20),
(16,3,'Feel Alive',16,4.70),

(17,1,'Sugar Rush',17,4.10),
(17,2,'Memories Again',17,4.20),
(17,3,'Daydream Kiss',17,4.50),

(18,1,'Last Horizon',18,4.60),
(18,2,'River Run',18,4.20),
(18,3,'Endless Blue',18,4.80),

(19,1,'Dark Forest',19,4.30),
(19,2,'Bloom Again',19,4.40),
(19,3,'Hidden Truth',19,4.70),

(20,1,'Pure Feelings',20,4.50),
(20,2,'Touch of Soul',20,4.30),
(20,3,'Moments Forever',20,4.80);

INSERT INTO Titel (CDNr, TitelNr, Titel, IntNr, Beurteilung) VALUES
(1,4,'Faded Echo',1,2.80),
(1,5,'Silent Walls',1,1.90),

(2,4,'Cold Sun',2,2.50),
(2,5,'Empty Streets',2,2.10),

(3,4,'Falling Down',3,2.20),
(3,5,'Silver Dust',3,2.95),

(4,4,'Lonely Moon',4,1.80),
(4,5,'Grey Horizon',4,2.40),

(5,4,'Broken Wings',5,2.70),
(5,5,'Heavy Clouds',5,1.50),

(6,4,'Verloren',6,2.60),
(6,5,'Tiefe Nacht',6,2.20),

(7,4,'Rusty Chains',7,2.90),
(7,5,'Heavy Stone',7,1.70),

(8,4,'Under Water',8,2.10),
(8,5,'Blue Shadows',8,2.80),

(9,4,'Low Signal',9,1.90),
(9,5,'Dusty Roads',9,2.50),

(10,4,'Quiet Storm',10,2.40),
(10,5,'Paper Wings',10,1.60);




