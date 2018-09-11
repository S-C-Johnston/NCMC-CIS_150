Relational databases store information grouped by type in tables of records.
Which is to say that tables store data about an arbitrary number of the same
type of thing, such as customers, vehicles, production parts.

 - A relational database, by contrast with a hierarchical database, allows
   relationships to be defined between records in tables.
 - RDBs use normalization, a design technique that reduces the duplication of
   information. By consequence, it reduces the risk of errors. Relationships
allow for strong amounts deduplication and normalization.

A relational model has three main components:
 - A collection of objects or relations
 - Operators that act on objects or relations
 - Data integrity methods

Glossary of terms:
 - Table: Also called a relation. A two-dimensional structure holding
   information of the same kind.A database consists of at least one table.
 - Rows: One dimension of a table. Each row represents one entity. Also called
   a record or a tuple.
 - Columns: The other dimension of a table. Each column pertains to one
   category of information, every instance of which will be of the same type.
The categories describe the fields of a record.
 - Indexes: See https://en.wikipedia.org/wiki/Database_index
 - Keys: A primary key is a unique identifier for each record. That is to say,
   no two records can have the same primary key. Can either be a single column
or a group of several columns, which is a compound key. Foreign keys are used
to reference records from other tables, and define relationships between
tables.
 - Constraints: The rules applied to the information in a database. Usually
   used to enforce business rules on the data. For example, one constraint may
be on salary, stating that it cannot be less than $15 hourly or $15,000 yearly.
 - Views: Provide virtual tables. A view gathers information from at least one
   source and presents it in the format of a single table. Within that view
information may then be filtered.
 - Stored procedures: A predefined set of statements that can be executed as
   needed. Stored procedures provide the main means of creating programs within
SQL server databases.

Domain and Integrity Constraints:
 - Domain constraints
	* Limit the range of domain values of an attribute
	* Specify uniqueness and nullness of an attribute
	* Specify the default value for an attribute when none is provided
 - Entity integrity
	* Every tuple or record is uniquely identified by a unique non-null
	  attribute, the primary key
 - Referential integrity
	* Records in different tables are correctly related by valid keys
