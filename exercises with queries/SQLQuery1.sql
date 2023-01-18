SELECT COUNT(IDTranzactie) AS 'Tranzactii'
FROM Tranzactii
WHERE IDClient = 1;

SELECT COUNT(IDTranzactie) AS 'Tranzactii'
FROM Tranzactii
WHERE IDClient = 1 AND IDProdus = 124;

SELECT COUNT(IDTranzactie) AS 'ProduseCumparate'
FROM Tranzactii
WHERE IDProdus = 124;

SELECT COUNT(IDTranzactie) AS 'ProduseCumparate'
FROM Tranzactii
WHERE IDProdus = 123;