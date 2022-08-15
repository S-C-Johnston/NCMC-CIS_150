USE MyGuitarShop;

CREATE LOGIN RobertHalliday
WITH PASSWORD = 'HelloBob1',
DEFAULT_DATABASE = MyGuitarShop;

CREATE USER RobertHalliday;

ALTER ROLE OrderEntry
ADD MEMBER RobertHalliday;
