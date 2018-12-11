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
