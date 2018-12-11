Short Answer
============

1. Database schemas are spoken of in two senses. In an abstract formal
   sense, a schema is the definition of the relationships and data
structures in a database. In the practical sense, a schema is often
treated by DBMSs and DBAs as a namespace or container for database
objects, such as tables, indices, etc. Users can be assigned permissions
to a schema, and by default unless otherwise specified at user creation,
they use the "dbo" schema.

2. Views are effectively virtual tables built from stored SELECT
   statements. They are useful for security primarily because
permissions can be assigned for them such that users can't access the
underlying data, and because they can represent arbitrary combinations
of fields to fit the DBA's -- or organization's -- needs, omitting any
information which is deemed sensitive or irrelevant to the view.

3. Database recovery methods include:

	- Database dumping, using tools or commands built into the DBMS
	  to create a SQL script. Running this script will recreate both
the schema definitions and the data in the DBMS.

	- Filesystem level backups, which require bringing the database
	  offline while archives can be made of the files the DBMS uses
to store the database. These can then be copied and brought back online.

	- Transaction or log-based backups. These use a combination of a
	  file which can be copied, and the logs of actions performed on
the database. The file can be brought back online, and an arbitrary
selection of logs can be replayed on top of that file in chronological
order. This is useful if there was some descructive action performed,
and the database needed to be rewound to just before this happened.

4. If and only if fault tolerance is not a requirement, RAID 0 -- which
   entails striping data across disks -- makes for very fast parallel
reading and writing of data. It requires only two disks to implement,
the minimum size for any RAID set, but it is a fragile structure.
Failure in either disk would make all data unrecoverable.

Longform questions
==================

Security Weaknesses
-------------------

SQL Server has many moving parts, several of which are not secure. These
include:

- System Administrator and Service users in the database are by default
  granted to/based on accounts with similar roles in the OS itself. If,
under any circumstance, the box on which the server lives is compromised
the default behavior also leaves the server open to compromise. It is
best practice to decouple as much of the server as possible from builtin
OS accounts. The builtin admin OS account should ideally be disabled, if
possible, and the users granted SysAdmin privileges shouldn't also have
admin privileges with the same account for the RDBMS. In the
same breath, the default access controls for new users and logins is
quite permissive, and those defaults should be changed as soon as
possible.

Backup and Compress AdventureWorks
----------------------------------

Backup of Six High-Load DBs
---------------------------

Backup AdventureWorks external drive for maintenance
----------------------------------------------------

Recover AdventureWorks from backup
----------------------------------

Disaster Recovery site in the cloud
-----------------------------------
