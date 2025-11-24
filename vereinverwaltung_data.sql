USE vereinverwaltung;

INSERT INTO Trainer (name, gehalt)
VALUES 
('Anna Müller', 2500.00),
('Markus Steiner', 2300.00),
('Julia Schwarz', 2600.00);

INSERT INTO Ausbildung (ausbildung)
VALUES
('Sportpädagogik'),
('Fitness Trainer B-Lizenz'),
('Erste Hilfe'),
('Psychologie im Sport');

INSERT INTO Trainer_Ausbildung (trainer_id, ausbildung_id)
VALUES
(1, 1),
(1, 3),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(3, 4);

INSERT INTO Spieler (name)
VALUES
('Leo Weber'),
('Tobias Kempf'),
('Mira Schuster'),
('Felix Brandt'),
('Nina König'),
('Sophie Maier'),
('Jonas Reiter'),
('Olivia Kurz'),
('David Sturm'),
('Laura Pfeifer');

INSERT INTO Teams (bezeichnung, trainer_id)
VALUES
('U12 Junioren', 1),
('Damen Team', 3),
('Herren Team', 2),
('U16 Jugend', 1);

INSERT INTO Team_Spieler (team_id, spieler_id)
VALUES
-- Team 1 (U12 Junioren)
(1, 1),
(1, 2),
(1, 3),

-- Team 2 (Damen Team)
(2, 5),
(2, 6),
(2, 10),

-- Team 3 (Herren Team)
(3, 4),
(3, 7),
(3, 9),

-- Team 4 (U16 Jugend)
(4, 2),
(4, 8),
(4, 9);