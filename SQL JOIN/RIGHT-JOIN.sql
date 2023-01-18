/* RIGHT JOIN */

/* Returneaza toate inregistrarile din tabelul din dreapta (Employees)
chiar daca nu exista in tabelul din stanga (Orders),
deci toti angajatii, inclusiv cei care nu au plasat comenzi */
SELECT Orders.OrderID, Employees.LastName, Employees.FirstName
FROM Orders
RIGHT JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
ORDER BY Orders.OrderID;