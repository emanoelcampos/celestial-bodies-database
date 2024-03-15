# Project Instructions

This project involves creating a database named `universe` using `PostgreSQL`. The database will consist of several tables, each representing a different celestial body. Here are the detailed instructions:

1. Create a database named `universe`.
2. Connect to your database with `\c universe`.
3. Add tables named `galaxy`, `star`, `planet`, and `moon`.
    - Each table should have a `primary key` that automatically increments.
    - Each table should have a `name` column of type `VARCHAR`.
    - At least two columns per table should not accept `NULL` values.
    - At least one column from each table should be required to be `UNIQUE`.
    - Each `primary key` column should follow the naming convention `table_name_id`. For example : the `moon` table should have a `primary key` column named `moon_id`.
4. Use the `INT` data type for at least two columns that are not a primary or foreign key.
5. Use the `NUMERIC` data type at least once.
6. Use the `TEXT` data type at least once.
7. Use the `BOOLEAN` data type on at least two columns.
8. Each `star` should have a `foreign key` that references one of the rows in `galaxy`.
9. Each `planet` should have a `foreign key` that references one of the rows in `star`.
10. Each `moon` should have a `foreign key` that references one of the rows in `planet`.
    - Each `foreign key` column should have the same name as the `column` it is referencing.
11. Your database should have at least five `tables`.
12. Each table should have at least three rows.
    - The `galaxy` and `star` tables should each have at least six rows.
    - The `planet` table should have at least 12 rows.
    - The `moon` table should have at least 20 rows.
13. Each table should have at least three columns.
    - The `galaxy`, `star`, `planet`, and `moon` tables should each have at least five columns.
14. Compact all queries into a `universe.sql` file.

Remember, the goal of this project is to practice creating and manipulating databases using `PostgreSQL`. Make sure to test your database thoroughly to ensure it meets all the requirements.