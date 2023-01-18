/* Afiseaza numele si prenumele fiecarui elev. */
SELECT nume_elev, prenume_elev
FROM eleviTable;

/* Afiseaza notele sub 5, ID elev si ID profesor. */
SELECT noteTable.nota, eleviTable.ID_elev, profesoriTable.ID_profesor
FROM noteTable
INNER JOIN eleviTable ON eleviTable.ID_elev = noteTable.ID_elev
INNER JOIN profesoriTable ON profesoriTable.ID_profesor = noteTable.ID_profesor
WHERE noteTable.nota < 5
GROUP BY noteTable.nota, eleviTable.ID_elev, profesoriTable.ID_profesor;

/* Afiseaza notele peste 5, ID elev si ID profesor. */
SELECT noteTable.nota, eleviTable.ID_elev, profesoriTable.ID_profesor
FROM noteTable
INNER JOIN eleviTable ON eleviTable.ID_elev = noteTable.ID_elev
INNER JOIN profesoriTable ON profesoriTable.ID_profesor = noteTable.ID_profesor
WHERE noteTable.nota > 5
GROUP BY noteTable.nota, eleviTable.ID_elev, profesoriTable.ID_profesor;

/* Afiseaza toate notele mai mari de 7 si ID materie (la alegere). */
SELECT noteTable.nota, materiiTable.ID_materie
FROM noteTable
INNER JOIN materiiTable ON materiiTable.ID_materie = noteTable.ID_materie
WHERE noteTable.nota > 7 AND materiiTable.ID_materie = '1'
GROUP BY noteTable.nota, materiiTable.ID_materie;

/* Din tabelul profesori, afiseaza prenumele si numarul de telefon al fiecarui profesor. */
SELECT prenume_profesor, telefon_profesor
FROM profesoriTable;

/* Afiseaza toate notele dintr-o anumita data (la alegere, in functie de datele cu care ai populat tabelul). */
SELECT nota
FROM noteTable
WHERE data = '2022-03-09';