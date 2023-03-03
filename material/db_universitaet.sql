CREATE DATABASE IF NOT EXISTS db_universitaet;
USE db_universitaet;

CREATE TABLE tbl_student (
	studentPK INT NOT NULL AUTO_INCREMENT,
	vorname VARCHAR(40),
	nachname VARCHAR(40),
	PRIMARY KEY (studentPK)
);

INSERT INTO tbl_student (vorname, nachname) VALUES
	("Rainer", "Zufall"),
	("Robin", "Hutt");

CREATE TABLE tbl_besucht (
	besuchtPK INT NOT NULL AUTO_INCREMENT,
	studentFK INT,
	vorlesungFK INT,
	PRIMARY KEY (besuchtPK)
);

INSERT INTO tbl_besucht (studentFK, vorlesungFK) VALUES
	("1", "1"),
	("2", "1");

CREATE TABLE tbl_vorlesung (
	vorlesungPK INT NOT NULL AUTO_INCREMENT,
	professorFK INT,
	titel VARCHAR(90),
	stundenanzahl INT,
	PRIMARY KEY (vorlesungPK)
);

INSERT INTO tbl_vorlesung (professorFK, titel, stundenanzahl) VALUES
	(1, "Einführung in die Quantenphysik", 4),
	(2, "Philosophie des Immanuel Kant", 2);

CREATE TABLE tbl_professor (
	professorPK INT NOT NULL AUTO_INCREMENT,
	vorname VARCHAR(40),
	nachname VARCHAR(40),
	PRIMARY KEY (professorPK)
);

INSERT INTO tbl_professor (vorname, nachname) VALUES
	("Andy", "Arbeit"),
	("Theo", "Rist");

CREATE TABLE tbl_buch (
	buchPK INT NOT NULL AUTO_INCREMENT,
	titel VARCHAR(90),
	PRIMARY KEY (buchPK)
);

INSERT INTO tbl_buch (titel) VALUES
	("Quantenphysik für Dummies"),
	("Kritik der reinen Vernunft");

CREATE TABLE tbl_benoetigt (
	benoetigtPK INT NOT NULL AUTO_INCREMENT,
	vorlesungFK INT,
	buchFK INT,
	PRIMARY KEY (benoetigtPK)
);

INSERT INTO tbl_benoetigt (vorlesungFK, buchFK) VALUES
	(1, 1),
	(2, 2);