/* create a new table named ClientsImages */
CREATE TABLE ClientsImages(ClientID int, ClientImage varbinary(max));

/* insert on the table ClientsImages new records */
INSERT INTO ClientsImages values (1, (SELECT * FROM OPENROWSET (BULK N'D:\Poze\Pinterest\1.jpg', SINGLE_BLOB) as T1));