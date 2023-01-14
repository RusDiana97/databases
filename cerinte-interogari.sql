/* Returnati numele produsului, cantitatea si pretul unitar
pentru toate produsele comandate dupa numele produsului
ordonate descrescator. */
SELECT ProductName, QuantityPerUnit,UnitPrice
FROM dbo.Products
ORDER BY ProductName DESC;

/* Returnati numele produsului, cantitatea si pretul unitar
pentru produsele care au cel putin 10 unitati in stoc si 
pretul unitar este mai mic de 30 de dolari comandati,
ordonate dupa numele produsului si pretul unitar. */

SELECT ProductName, QuantityPerUnit, UnitPrice
FROM dbo.Products
WHERE UnitsInStock >= 10 AND UnitPrice < 30.0
ORDER BY ProductName, UnitPrice;

/* Returnati numele celui mai tanar angajat. */
SELECT LastName, FirstName
FROM dbo.Employees
WHERE BirthDate = (SELECT MAX(BirthDate) FROM Employees);

/* Returnati numele celui mai in varsta angajat. */
SELECT LastName, FirstName
FROM dbo.Employees
WHERE BirthDate = (SELECT MIN(BirthDate) FROM Employees);

/* Returnati prenumele si numele angajatilor cu titlul
Sales Representative si Sales Manager. */
SELECT FirstName, LastName, Title
FROM dbo.Employees
WHERE Title = 'Sales Representative' OR Title = 'Sales Manager';

/* Returnati toti angajatii care nu sunt din Londra, ordonati
dupa titlu crescator si prenume descrescator. */
SELECT FirstName, LastName,	Title, City
FROM dbo.Employees
WHERE City != 'London'
ORDER BY Title ASC, LastName DESC;

/* Returnati orasul, numele companiei si numele de contact ale tututor
clientilor care se afla in orase care incep cu 'A' sau 'B' si sortati dupa
numele de contact descendent. */
SELECT City, CompanyName, ContactName
FROM dbo.Customers
WHERE City LIKE 'A%' OR City LIKE 'B%'
ORDER BY ContactName DESC;

/* Returnati numele si prenumele tuturor angajatilor ale caror nume
incep cu o litera intre 'J' si 'M'. */
SELECT FirstName, LastName 
FROM dbo.Employees
WHERE LastName LIKE '[j-m]%';

/* Afiseaza primii 5 clienti distincti intr-o coloana denumita 'Customers'. */
SELECT DISTINCT TOP 5 ContactName AS 'Customers'
FROM dbo.Customers;

/* Afiseaza produsele cu pretul cuprins intre 10 dolari si 20 dolari. */
SELECT ProductName, UnitPrice AS 'Price'
FROM dbo.Products
WHERE UnitPrice BETWEEN 10 AND 20;
