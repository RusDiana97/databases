/* Create in the database Society a table named Materials */
CREATE TABLE Materials (
MaterialID int NOT NULL PRIMARY KEY,
MaterialName varchar(255) NOT NULL,
PricePerUnit smallint NOT NULL,
WarehouseName varchar(255) NOT NULL
);

/* Add a new column in the Materials table from Society database */
ALTER TABLE Materials
ADD Quantity smallint NOT NULL;

/* Add records in the Materials table from the Society database */
INSERT INTO Materials (MaterialID, MaterialName, PricePerUnit, WarehouseName, Quantity)
VALUES('1', 'Wood', '50', 'Wood Warehouse', '80'),
      ('2', 'Stone', '20', 'Stone Warehouse', '30'),
	  ('3', 'Steel', '60', 'Steel Warehouse', '90'),
	  ('4', 'Stone', '20', 'Stone Warehouse', '50'),
	  ('5', 'Stone', '20', 'Stone Warehouse', '30'),
	  ('6', 'Steel', '60', 'Steel Warehouse', '90'),
	  ('7', 'Stone', '20', 'Stone Warehouse', '30'),
	  ('8', 'Wood', '50', 'Wood Warehouse', '80'),
	  ('9', 'Wood', '50', 'Wood Warehouse', '80'),
	  ('10', 'Stone', '20', 'Stone Warehouse', '50'),
	  ('11', 'Steel', '60', 'Steel Warehouse', '90'),
	  ('12', 'Steel', '60', 'Steel Warehouse', '90'),
	  ('13', 'Stone', '20', 'Stone Warehouse', '30');

/* Update the records from the columns WarehouseName and Quantity in the Materials table from Socity database */
UPDATE Materials
SET WarehouseName = 'Warehouse 1', Quantity = '80'
WHERE MaterialID = 2;

UPDATE Materials
SET WarehouseName = 'Warehouse 2', Quantity = '100'
WHERE MaterialID = 4;

UPDATE Materials
SET WarehouseName = 'Warehouse 3', Quantity = '55'
WHERE MaterialID BETWEEN 5 AND 8;

UPDATE Materials
SET WarehouseName = 'Warehouse 4', Quantity = '40'
WHERE MaterialID IN (1, 9, 12);

UPDATE Materials
SET WarehouseName = 'Warehouse 2', Quantity = '10'
WHERE MaterialID IN (3, 10);

UPDATE Materials
SET WarehouseName = 'Warehouse 1', Quantity = '22'
WHERE MaterialID IN (11, 13);