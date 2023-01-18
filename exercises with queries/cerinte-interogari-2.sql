/* Returnați toate numele companiilor și numele de contact pentru care Clienții se află în Buenos Aires. */
SELECT CompanyName, ContactName
FROM dbo.Customers
WHERE City = 'Buenos Aires';

/* Returnați data comenzii, data expedierii, ID-ul clientului și Shipped Date, plasate pe 19 mai 1997. */
SELECT OrderDate,  ShippedDate, CustomerID
FROM dbo.Orders
WHERE OrderDate = '1997-05-19 00:00:00.000';

/* Returnați numele, prenumele și țara tuturor angajaților care nu se află în Statele Unite. */
SELECT LastName, FirstName, Country
FROM dbo.Employees
WHERE Country != 'USA';

/* Returnați ID-ul angajatului, ID-ul comenzii, ID-ul clientului, Required Date si Shipped Date, 
a tuturor comenzilor care au fost expediate mai târziu 
decât au fost solicitate (Shipped Date > Required Date). */
SELECT EmployeeID, OrderID, CustomerID, RequiredDate, ShippedDate
FROM dbo.Orders
WHERE ShippedDate > RequiredDate;

/* Returnați orașul, numele companiei și numele de contact al tuturor clienților care se află în orașe care încep cu „A” sau „B“. */
SELECT City, CompanyName, ContactName
FROM dbo.Customers
WHERE City LIKE 'A%' OR City LIKE 'B%';

/* ??????? Returnați toate comenzile care au un cost de transport mai mare de 500 USD. ?????? */
SELECT *
FROM dbo.Orders
WHERE ShipPrice > 500;

/* Returnați numele produsului, unitățile în stoc (UnitsInStock), 
unitățile pe comandă (UnitsOnOrder) și ReorderLevel a tuturor produselor 
care sunt disponibile pentru recomandă. */
SELECT ProductName, UnitsInStock, UnitsOnOrder, ReorderLevel
FROM dbo.Products
WHERE ReorderLevel > 0;

/* Returnați numele companiei, numele de contact și numărul de fax al tuturor clienților care au un număr de fax. */
SELECT CompanyName, ContactName, Fax
FROM dbo.Customers
WHERE Fax IS NOT NULL;

/* Returnați numele și prenumele tuturor angajaților care nu raportează nimănui (ReportsTo). */
SELECT LastName, FirstName
FROM dbo.Employees
WHERE ReportsTo IS NULL;

/* Returnați numele companiei, numele contactului și numărul de fax 
al tuturor clienților care au un număr de fax;
sortați după numele companiei. */
SELECT CompanyName, ContactName, Fax
FROM dbo.Customers
WHERE Fax IS NOT NULL
ORDER BY CompanyName;

/* Returnați orașul, numele companiei și numele de contact ale tuturor clienților care se află în orașe 
care încep cu „A” sau „B”; 
sortați după numele contactului descendent. */
SELECT City, CompanyName, ContactName
FROM dbo.Customers
WHERE City LIKE 'A%' OR City LIKE 'B%'
ORDER BY ContactName DESC;

/* Returnați numele și prenumele tuturor angajaților ale căror nume încep cu o literă între „J” și „M”. */
SELECT LastName, FirstName
FROM dbo.Employees
WHERE LastName LIKE '[j-m]%';