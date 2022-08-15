USE MyGuitarShop;

DECLARE @role_user varchar(510)
DECLARE @role_name char(50)
SET @role_name = 'OrderEntry'

DECLARE pending_user CURSOR FOR
SELECT DP2.name AS DatabaseUserName -- The only value we actually want
 FROM sys.database_role_members AS DRM  
 RIGHT OUTER JOIN sys.database_principals AS DP1  
   ON DRM.role_principal_id = DP1.principal_id  
 LEFT OUTER JOIN sys.database_principals AS DP2  
   ON DRM.member_principal_id = DP2.principal_id  
WHERE DP1.type = 'R' --Match only the Role
AND DP1.name = @role_name; --with the name OrderEntry

/*Edited from the query found here:
 * https://docs.microsoft.com/en-us/sql/relational-databases/system-catalog-views/sys-database-role-members-transact-sql?view=sql-server-2017
 * The purpose is to spit all of the member of the Order Entry role into the
 * cursor. */

OPEN pending_user
FETCH NEXT FROM pending_user INTO @role_user
WHILE @@FETCH_STATUS = 0 
	BEGIN
		IF NOT EXISTS (
			SELECT *
			FROM sys.database_principals
			WHERE name = @role_user
		)
		BEGIN
			DECLARE @creation nvarchar(MAX)
			SELECT @creation = 'CREATE USER '
			+ @role_user
			EXEC sp_executesql @creation
END

DECLARE @drop_user_from_role nvarchar(MAX)
SELECT @drop_user_from_role = 'ALTER ROLE '
+ @role_name
+ ' '
+ 'DROP MEMBER '
+ @role_user

EXEC sp_executesql @drop_user_from_role
PRINT('Dropped ' + @role_user + ' from ' + @role_name)

FETCH NEXT FROM pending_user INTO @role_user
END

CLOSE pending_user
DEALLOCATE pending_user

DECLARE @drop_role nvarchar(MAX)
SELECT @drop_role = 'DROP ROLE '
+ @role_name

EXEC sp_executesql @drop_role
PRINT('Dropped role ' + @role_name)
