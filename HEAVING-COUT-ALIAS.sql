/* Afiseaza numarul de produse din fiecare categorie 
grupate dupa Category Name. */
SELECT CategoryName, COUNT(*) AS TotalNumberOfProductsByCategory
FROM Products
INNER JOIN Categories ON Categories.CategoryID = Products.CategoryID
GROUP BY Categories.CategoryName;

/* Afiseaza numarul de clienti din fiecare tara daca
numarul de clienti din tara respectiva este mai mare
decat 5. */
SELECT COUNT(CustomerID) AS CustomersNumber, Country
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5