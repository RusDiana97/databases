/* FULL JOIN */

/* Returneaza toate randurile din tabelul din stanga (Customers) si toate randurile
din tabelul din dreapta (Orders). Chiar daca exista randuri in Customers care nu au potriviri
in Orders sau invers, respectivele randuri vor fi listate si ele. */
SELECT Customers.ContactName, Orders.OrderID
FROM Customers
FULL JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.ContactName;