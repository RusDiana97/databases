/* Create note table */
CREATE TABLE note(
nota int,
data datetime,
ID_elev int,
ID_profesor int,
ID_materie int
);

/* Insert records into materii table */
INSERT INTO note(nota, data, ID_elev, ID_profesor, ID_materie)
VALUES('10', '2022-09-03', '4', '4', '4'),
('9', '2022-09-06', '3', '3', '2'),
('8', '2022-10-03', '2', '1', '3'),
('7', '2022-11-06', '2', '3', '2');