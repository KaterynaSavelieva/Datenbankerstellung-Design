USE cd;

/* --------- Interpreten --------- */
INSERT INTO Interpreten (InterpretID, Interpret) VALUES
(1, 'Coldplay'),
(2, 'Adele'),
(3, 'Ed Sheeran'),
(4, 'Rammstein'),
(5, 'Wolfgang Amadeus Mozart');

/* --------- Musikrichtung --------- */
INSERT INTO Musikrichtung (MRID, Musikrichtung) VALUES
(1, 'Pop'),
(2, 'Rock'),
(3, 'Klassik'),
(4, 'Metal');

/* --------- CD --------- */
INSERT INTO CD (CDNr, CDName, IntNr, MRNr) VALUES
(1, 'Parachutes',           1, 2),  -- Coldplay, Rock
(2, '21again',                   2, 1),  -- Adele, Pop
(3, 'Divide',               3, 1),  -- Ed Sheeran, Pop
(4, 'Mutter',               4, 4),  -- Rammstein, Metal
(5, 'Best of Mozart',       5, 3);  -- Mozart, Klassik

/* --------- Titel --------- */
/* Важливо: у тебе TitelNr НЕ AUTO_INCREMENT, тому задаємо його явно */
INSERT INTO Titel (TitelNr, Titel, IntNr, Beurteilung) VALUES
(1,  'Yellow',                    1, 4.50),
(2,  'Trouble',                   1, 4.20),
(3,  'Rolling in the Deep',       2, 5.00),
(4,  'Someone Like You',          2, 4.80),
(5,  'Shape of You',              3, 4.90),
(6,  'Perfect',                   3, 4.70),
(7,  'Castle on the Hill',        3, 4.10),
(8,  'Sonne',                     4, 4.30),
(9,  'Ich will',                  4, 4.00),
(10, 'Links 2 3 4',               4, 3.80),
(11, 'Symphony No. 40',           5, 4.95),
(12, 'Eine kleine Nachtmusik',    5, 4.85),
(13, 'Old Song',                  1, 2.50),  -- спец. гірша оцінка
(14, 'B-Side Track',              2, 1.80);  -- ще одна погана оцінка

/* --------- CD_Titel (Zuordnung CD ↔ Titel) --------- */
INSERT INTO CD_Titel (CDNr, TitelNr) VALUES
-- CD 1: Parachutes
(1, 1),   -- Yellow
(1, 2),   -- Trouble
(1, 13),  -- Old Song

-- CD 2: 21
(2, 3),   -- Rolling in the Deep
(2, 4),   -- Someone Like You
(2, 14),  -- B-Side Track

-- CD 3: Divide
(3, 5),   -- Shape of You
(3, 6),   -- Perfect
(3, 7),   -- Castle on the Hill

-- CD 4: Mutter
(4, 8),   -- Sonne
(4, 9),   -- Ich will
(4, 10),  -- Links 2 3 4

-- CD 5: Best of Mozart
(5, 11),  -- Symphony No. 40
(5, 12);  -- Eine kleine Nachtmusik




INSERT INTO Interpreten (InterpretID, Interpret)
VALUES (10, 'Black Strings Band');

INSERT INTO Musikrichtung (MRID, Musikrichtung)
VALUES (10, 'Indie Rock');

INSERT INTO CD (CDNr, CDName, IntNr, MRNr)
VALUES (10, 'Black Strings', 10, 10);

INSERT INTO Titel (TitelNr, Titel, IntNr, Beurteilung)
VALUES (50, 'Rusty Chains', 10, 2.20);

INSERT INTO CD_Titel (CDNr, TitelNr)
VALUES (10, 50);

INSERT INTO Musikrichtung (Musikrichtung) VALUES
('Klassik'),
('Schlager');

INSERT INTO CD (CDName, IntNr, MRNr)
VALUES ('Test Without MR 1', 1, NULL),
       ('Test Without MR 2', 2, NULL);

