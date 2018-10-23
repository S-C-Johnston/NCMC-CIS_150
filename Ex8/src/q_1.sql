USE MyGuitarShop;

CREATE INDEX IX_ZipCode
	ON Addresses (ZipCode);

SELECT *
	FROM sys.indexes
	WHERE name = 'IX_ZipCode';
