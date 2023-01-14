/* SQL JOIN */

/* Afiseaza numele produsului si pretul, 
pentru produsul cu cel mai mare pret de lista vandut dupa 1995-04-01 (inclusiv această dată).
Vei avea nevoie de 3 tabele: Orders, Order Details, Products */
SELECT Products.ProductName, Products.UnitPrice
FROM Products
INNER JOIN dbo.[Order Details] ON dbo.[Order Details].ProductID = Products.ProductID
INNER JOIN Orders ON Orders.OrderID = dbo.[Order Details].OrderID
WHERE Orders.OrderDate >= '1995-04-01' AND Products.UnitPrice = (SELECT MAX(UnitPrice) FROM Products)
GROUP BY Products.ProductName, Products.UnitPrice;

/* Afiseaza pentru fiecare client, numărul de comenzi plasate în martie 1995.
Ordoneaza dupa CustomerID. */
SELECT Orders.CustomerID, COUNT(*) AS OrdersTotalNumber
FROM Orders
RIGHT JOIN Customers ON Customers.CustomerID = Orders.CustomerID
INNER JOIN dbo.[Order Details] ON [Order Details].OrderID = dbo.Orders.OrderID
WHERE Orders.OrderDate > '1995-02-28' AND Orders.OrderDate < '1995-04-01'
GROUP BY Orders.CustomerID;

/* Afiseaza produsele care nu au fost comandate. */
SELECT ProductName
FROM dbo.Products
RIGHT JOIN dbo.[Order Details] ON dbo.Products.ProductID = dbo.[Order Details].ProductID
WHERE dbo.[Order Details].OrderID IS NULL;
