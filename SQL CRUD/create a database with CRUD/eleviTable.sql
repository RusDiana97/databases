/* Create elevi table */
CREATE TABLE elevi (
ID int,
nume_elev varchar(255),
prenume_elev varchar(255),
adresa_elev varchar(255),
telefon_elev char(10)
);

/* Insert records into elevi table */
INSERT INTO elevi(ID, nume_elev, prenume_elev, adresa_elev, telefon_elev)
VALUES ('1', 'Pop', 'Andrei', 'Str. Lalelelor, nr. 5', '0755766855'), ('2', 'Vasilescu', 'Marian', 'Str. Principala, nr. 1', '0755765655');

/* Delete all rows */
DELETE FROM elevi;

/* Insert new records into elevi table */
INSERT INTO elevi(ID, nume_elev, prenume_elev, adresa_elev, telefon_elev)
VALUES ('1', 'Pop', 'Andrei', 'Str. Lalelelor, nr. 5', '0755766855'), 
('2', 'Vasilescu', 'Marian', 'Str. Principala, nr. 1', '0755765655'),
('3', 'Chereches', 'Andreea', 'Str. Al. Rozelor, nr. 15', '0755765555'),
('4', 'Marinescu', 'Alina', 'Str. Trandafirilor, nr. 6', '0755565555');