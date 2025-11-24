USE vereinverwaltung;

CREATE or REPLACE view v_speal_team AS 
SELECT
	spieler.name as Spieler,
    teams.bezeichnung As Team
FROM spieler
LEFT Join team_spieler on team_spieler.spieler_id=spieler.spieler_id
LEFT JOIN teams on teams.team_id=team_spieler.team_id;

select * from v_speal_team ORDER BY Spieler;

CREATE or REPLACE view v_trainer AS
SELECT
	ausbildung.ausbildung As Ausbildung,
    trainer.name    As Trainer
from trainer
left join trainer_ausbildung on trainer_ausbildung.trainer_id=trainer.trainer_id
left JOIN ausbildung on ausbildung.ausbildung_id=trainer_ausbildung.ausbildung_id;

SELECT * FROM v_trainer order BY ausbildung, Trainer;

CREATE or REPLACE VIEW v_spiel_train AS
SELECT
	spieler.name As Spieler,
    trainer.name As Trainer
from spieler
left join team_spieler on team_spieler.spieler_id=spieler.spieler_id
left join teams on teams.team_id=team_spieler.team_id
left join trainer on trainer.trainer_id=teams.trainer_id;

SELECT * from v_spiel_train ORDER BY spieler;

UPDATE trainer
SET gehalt = gehalt*1.25;


    
    