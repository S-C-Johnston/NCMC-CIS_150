USE AdventureWorksLT2012;
GO

DECLARE @blocksize INT = 2048;
/* Avoid magic numbers, yeah? This specifies size in bytes, not
 * kilobytes, as it happens. This is correct, though. 2048 KB blocks
 * append a differential backup to a running total aren't used, to my
 * knowledge. Modern HDDs use 4096 byte blocks. */

BACKUP DATABASE AdventureWorksLT2012
TO DISK = 'C:\tmp\AdventureWorksLT2012.bak'
WITH COMPRESSION,
INIT,
BLOCKSIZE=@blocksize;
GO

