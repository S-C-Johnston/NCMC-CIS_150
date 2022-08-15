USE MyGuitarShop;

DECLARE @full_name varchar(510)

DECLARE pending_user CURSOR FOR
SELECT (Firstname + Lastname) as name FROM Administrators

OPEN pending_user
FETCH NEXT FROM pending_user INTO @full_name
WHILE @@FETCH_STATUS = 0 
	BEGIN
		/*Simple logic, check if a login already exists. Taken
		from https://stackoverflow.com/a/1945219 */
		IF NOT EXISTS (
			SELECT *
			FROM sys.server_principals
			WHERE name = @full_name
			)
			BEGIN
				DECLARE @stmt nvarchar(MAX)

				SELECT @stmt = 'CREATE LOGIN '
				+ @full_name
				/*Would use QUOTENAME() if this was user
				 * input*/
				+ ' '
				+ 'WITH PASSWORD =''temp'', '/*Double
				up on single-quotes to escape them in a
				string. I don't know why, and I can't
				find an authoritative source. This was a
				source of much frustration solved by
				this answer:
				https://stackoverflow.com/a/1586588 */
				+ 'CHECK_POLICY = OFF, '
				/*To prevent the server from throwing a
				 * fit when using that temporary
				 * password */
				+ 'DEFAULT_DATABASE = MyGuitarShop '

				/*Holy nested statements batman.
				 * Microsoft recently changed their
				 * documentation website, for some
				 * reason unbenknownst to me. Having
				 * done so, they've made it ludicrously
				 * difficult to find any authoritative
				 * information on how their dialect of
				 * T-SQL actually works. Hours wasted
				 * here: 5-6. */

				EXEC sp_executesql @stmt

				/*Absolute nonsense necessary because
				 * CREATE LOGIN can't use a parameter
				 * https://stackoverflow.com/a/1379471
				 * */
END

IF NOT EXISTS (
	SELECT *
	FROM sys.database_principals
	WHERE name = @full_name
)
BEGIN
	DECLARE @creation nvarchar(MAX)
	SELECT @creation = 'CREATE USER '
	+ @full_name
	EXEC sp_executesql @creation
END

DECLARE @role_addition nvarchar(MAX)
SELECT @role_addition = 'ALTER ROLE OrderEntry '
+ 'ADD MEMBER '
+ @full_name

EXEC sp_executesql @role_addition

FETCH NEXT FROM pending_user INTO @full_name
END

CLOSE pending_user
DEALLOCATE pending_user
