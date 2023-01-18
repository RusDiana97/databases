/* Create materii table */
CREATE TABLE materii (
ID_materie int,
denumire_materie varchar(255),
descriere_materie varchar(500)
)

/* Insert records into materii table */
INSERT INTO materii(ID_materie, denumire_materie, descriere_materie)
VALUES('1', 'limba si literatura romana', 'gramatica si ortografie'),
('2', 'matematica', 'algebra si analiza matematica'),
('3', 'biologie', 'biologie pentru elevii de liceu'),
('4', 'istorie', 'istoria Romaniei')