/* CREATE Table */
CREATE TABLE detalii_persoane(
ID int,
Nume varchar(255),
Prenume varchar(255),
Adresa varchar(255),
Oras varchar(255)
);

/* INSERT INTO */
INSERT INTO detalii_persoane (ID, Nume, Prenume, Adresa, Oras)
VALUES ('1', 'Rus', 'Diana', 'Str.Al.Tomis', 'Dej');

/* UPDATE */
UPDATE detalii_persoane
SET Oras = 'Cluj', Adresa = 'Str.Fabricii de Zahar'
WHERE ID = 1;

/* DELETE row */
DELETE FROM detalii_persoane WHERE ID = 1;

INSERT INTO detalii_persoane (ID, Nume, Prenume, Adresa, Oras)
VALUES ('1', 'Rus', 'Diana', 'Str.Al.Tomis', 'Dej');

INSERT INTO detalii_persoane (ID, Nume, Prenume, Adresa, Oras)
VALUES ('2', 'Chereches', 'Ramona', 'Str.Principala', 'Jichis');

/* DELETE all rows */
DELETE FROM detalii_persoane;

