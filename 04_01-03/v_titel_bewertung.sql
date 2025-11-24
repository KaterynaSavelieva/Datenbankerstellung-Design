USE cd_datenbank;

CREATE OR REPLACE VIEW v_titel_bewertung AS 
SELECT 
	titel.Titel,
	titel.Beurteilung
FROM titel
WHERE titel.Beurteilung > 3
ORDER BY titel.Beurteilung DESC, titel.Titel;

SELECT * FROM v_titel_bewertung;