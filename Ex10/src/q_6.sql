USE MyGuitarShop;

EXEC sp_executesql N'CREATE SCHEMA [Admin]'

ALTER SCHEMA [Admin]
TRANSFER [dbo].[Addresses]

ALTER USER [RobertHalliday]
WITH DEFAULT_SCHEMA = [Admin]

GRANT SELECT,
INSERT,
UPDATE,
DELETE,
EXECUTE
ON SCHEMA :: [Admin]
TO [RobertHalliday]
