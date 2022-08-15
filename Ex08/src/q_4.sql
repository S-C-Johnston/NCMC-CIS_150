USE MyWebDB;

ALTER TABLE Products
	ADD ProductPrice DECIMAL(5,2) /* 5 total digits, 2 decimal places,
	5-2=3 left hand digits */
	DEFAULT 9.99,
	DateAdded DATETIME2(7)
	DEFAULT CURRENT_TIMESTAMP;
