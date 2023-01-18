/* LEFT JOIN */

/* Returneaza toate inregistrarile din tabelul din stanga
(Customers), chiar daca nu exista inregistrari in tabelul din dreapta
(Orders). Se afiseaza toti clientii impreuna cu comenzile plasate, iar daca
un client nu a plasat nicio comanda, in coloana OrderID va aparea NULL */
SELECT Customers.ContactName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;