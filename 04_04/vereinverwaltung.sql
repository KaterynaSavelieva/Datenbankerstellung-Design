-- 
DROP DATABASE vereinverwaltung;
CREATE DATABASE IF NOT EXISTS vereinverwaltung  DEFAULT CHARACTER SET utf8mb4  DEFAULT COLLATE utf8mb4_unicode_ci;
USE vereinverwaltung;

CREATE TABLE Trainer (
    trainer_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name   VARCHAR(50) NOT NULL,
    gehalt DECIMAL (4,2)
);

CREATE TABLE Ausbildung (
    ausbildung_id          INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    ausbildung VARCHAR(100) NOT NULL
);

CREATE TABLE Trainer_Ausbildung  (
    trainer_id        INT UNSIGNED NOT NULL,
    ausbildung_id     INT UNSIGNED NOT NULL,
    PRIMARY KEY (trainer_id, ausbildung_id),
    FOREIGN KEY (trainer_id) REFERENCES Trainer (trainer_id),
    FOREIGN KEY (ausbildung_id) REFERENCES Ausbildung (ausbildung_id)
);

CREATE TABLE Spieler (
    spieler_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name   VARCHAR(50) NOT NULL
);

CREATE TABLE Teams (
    team_id     INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    bezeichnung VARCHAR(50) NOT NULL,
    trainer_id 	INT UNSIGNED,
    FOREIGN KEY (trainer_id) REFERENCES Trainer (trainer_id)
);

CREATE TABLE Team_Spieler (
    team_id        INT UNSIGNED NOT NULL,
    spieler_id     INT UNSIGNED NOT NULL,
    PRIMARY KEY (team_id, spieler_id),
    FOREIGN KEY (team_id) REFERENCES Teams (team_id),
    FOREIGN KEY (spieler_id) REFERENCES Spieler (spieler_id)
);
