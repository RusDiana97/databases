/* select all columns from the Categories table */
SELECT * 
FROM Categories;

/* select Picture column from the Category table and choose an alias for it */
SELECT Picture as PictureCategory
FROM Categories;

/* select from the Categories table the fields from the CategoryName 
   where the CategoryID is between 3 and 6 */
SELECT CategoryName
FROM Categories
WHERE CategoryID BETWEEN 3 AND 6;

/* select from the Categories table the fields from the CategoryName 
   where the category name starts with 'C' */
SELECT CategoryName
FROM Categories
WHERE CategoryName LIKE 'C%';

/* select from Categories table the fields from CategoryName and Description
   where they are order descendent by CategoryName's fields */
SELECT CategoryName, Description
FROM Categories
ORDER BY CategoryName DESC;