/* What are the distinct materials from the Warehouse 2?*/
SELECT DISTINCT MaterialName
FROM Materials
WHERE WarehouseName = 'Warehouse 2';

/* In what distinct warehouses we have the material wood? */
SELECT DISTINCT WarehouseName
FROM Materials
WHERE MaterialName = 'Wood';

/* What is the total price for the stone from the all warehouses? */
SELECT SUM(PricePerUnit * Quantity) as TotalPriceStone
FROM Materials
WHERE MaterialName = 'Stone';

/* What is the total price of the total materials? */
SELECT SUM(PricePerUnit * Quantity) as TotalPriceMaterials
FROM Materials;

/* What is the total price for the materials from each warehouse? */
SELECT WarehouseName, SUM(PricePerUnit * Quantity) as TotalPrice
FROM Materials
GROUP BY WarehouseName;

/* Steel goes up in price by 10%. Update the data from the Materials table. */
UPDATE Materials 
SET PricePerUnit = (PricePerUnit * 10)/100 + PricePerUnit;

/* Add a new material in Materials table. */
INSERT INTO Materials(MaterialID, MaterialName, PricePerUnit, WarehouseName, Quantity)
VALUES ('20', 'Gold', '35', 'Warehouse 2', '120');

/* Delete the new material that you added. */
DELETE FROM Materials
WHERE MaterialName = 'Gold';

/* Show all the records from the Materials table. */
SELECT *
FROM Materials;
