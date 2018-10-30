USE MyWebDB;

INSERT INTO USERS (
	EmailAddress,
	FirstName,
	LastName )
VALUES ('johnsmith@gmail.com', 'John', 'Smith'),
	('janedoe@yahoo.com', 'Jane', 'Doe');

INSERT INTO Products (
	ProductName )
VALUES ('Local Music Vol 2'),
	('Local Music Vol 1');

INSERT INTO Downloads (
	UserID,
	ProductID,
	DownloadDate,
	FileName )
VALUES (1, 2, CURRENT_TIMESTAMP, 'petals_are_falling.mp3'),
	(2, 1, CURRENT_TIMESTAMP, 'turn_signal.mp3'),
	(2, 2, CURRENT_TIMESTAMP, 'one_horse_town.mp3');

SELECT EmailAddress, FirstName, LastName,
DownloadDate, FileName,
ProductName
FROM Users as usr
	INNER JOIN Downloads as dl
		ON usr.UserID = dl.UserID
	INNER JOIN Products as pd
		ON dl.ProductID = pd.ProductID
	ORDER BY usr.EmailAddress DESC, pd.ProductName ASC;
