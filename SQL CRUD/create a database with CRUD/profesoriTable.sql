/* Create profesori table */
CREATE TABLE profesori (
ID int,
nume_profesor varchar(255),
prenume_profesor varchar(255),
telefon_profesor char(10),
email_profesor varchar(255)
);

/* Insert records into profesori table */
INSERT INTO profesori(ID, nume_profesor, prenume_profesor, telefon_profesor, email_profesor)
VALUES('1', 'Ungur', 'Andrei', '0755766555','ungur.andrei@gmail.com'),
('2', 'Georgiu', 'Mariana', '0755767555','georgiu.mariana@gmail.com'),
('3', 'Florescu', 'Florina', '0758766555','florescu.florina@gmail.com'),
('4', 'Rusu', 'Ionela', '0788766555','rusu.ionela@gmail.com');