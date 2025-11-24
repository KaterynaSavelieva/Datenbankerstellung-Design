USE cd_datenbank;

CREATE OR REPLACE VIEW v_titel_bewertung AS 
SELECT 
	titel.Titel,
	titel.Beurteilung
FROM titel
WHERE titel.Beurteilung >= 3
ORDER BY titel.Beurteilung DESC, titel.Titel;

SELECT * FROM v_titel_bewertung;

CREATE OR REPLACE VIEW v_cd_titel_bewertung AS 
SELECT 
	cd.CDName,
    titel.Titel,
	titel.Beurteilung    
FROM titel
JOIN cd ON cd.CDNr=titel.CDNr
WHERE titel.Beurteilung  <3
ORDER BY titel.Beurteilung DESC, titel.Titel;

SELECT * FROM v_cd_titel_bewertung
 WHERE CDName = 'Black Strings' AND titel= 'Rusty Chains';
 
 
CREATE OR REPLACE VIEW v_cd_name AS 
SELECT 
	cd.CDName,
    titel.Titel,
	-- titel.Beurteilung,
    interpreten.Interpret,
    musikrichtung.Musikrichtung
FROM titel
JOIN cd ON cd.CDNr=titel.CDNr
LEFT JOIN interpreten ON interpreten.InterpretID=titel.IntNr
LEFT JOIN musikrichtung on musikrichtung.MRID=cd.MRNr
ORDER BY cd.CDName;

SELECT * FROM v_cd_name;

CREATE OR REPLACE VIEW v_cd_songs AS 
SELECT 
	musikrichtung.Musikrichtung,
    COUNT(titel.Titel) AS Menge
FROM titel
JOIN cd ON cd.CDNr=titel.CDNr
JOIN musikrichtung on musikrichtung.MRID=cd.MRNr
GROUP BY musikrichtung.Musikrichtung;

SELECT * FROM v_cd_songs;

INSERT INTO Musikrichtung (Musikrichtung) VALUES
('Klassik'),
('Schlager');

UPDATE musikrichtung
SET musikrichtung.Musikrichtung = 'Classic'
WHERE musikrichtung.Musikrichtung = 'Klassik';

UPDATE musikrichtung
SET musikrichtung.Musikrichtung = 'deutsche Schlager'
WHERE musikrichtung.Musikrichtung = 'Schlager';


INSERT INTO CD (CDName, IntNr, MRNr)
VALUES ('Test Without MR 1', 1, NULL),
       ('Test Without MR 2', 2, NULL);

DELETE FROM cd
WHERE cd.MRNr is NULL;






