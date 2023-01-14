/* INNER JOIN */

/* Afisati toti clientii care au plasat comenzi. */
SELECT Customers.ContactName
FROM Orders
INNER JOIN Customers ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.ContactName;

/* Afisati ID-ul clientului (customer ID) si numarul produselor comandate
intre 1998.03.01 si 1998.03.31 pe o coloana denumita OrdersNumber.
Ordonati datele dupa CustomerID. */
SELECT Orders.CustomerID, Customers.CompanyName, Orders.OrderDate, COUNT(*) AS OrdersNumber
FROM Orders
INNER JOIN Customers ON Customers.CustomerID = Orders.CustomerID
INNER JOIN dbo.[Order Details] ON dbo.[Order Details].OrderID = Orders.OrderID
WHERE Orders.OrderDate BETWEEN '1995.03.01' AND '1998.03.31'
GROUP BY Orders.CustomerID, Customers.CompanyName, Orders.OrderDate;
