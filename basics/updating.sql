/*
Updating rows in SQL is done using the UPDATE statement. This statement allows you to modify 
existing records in a table. The basic syntax includes specifying the table to update, 
the columns to change, and the new values, along with an optional WHERE clause to specify 
which rows should be updated. If the WHERE clause is omitted, all rows in the table will
be updated.
*/

-- Basic Synytax
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;

-- Example
UPDATE employees
SET role = 'Senior Consultant'
WHERE employee_id = 3;


-- Updating Multiple Columns
-- You can update multiple columns in a single UPDATE statement.
UPDATE employees
SET name = 'Michael Smith', role = 'Lead Consultant'
WHERE employee_id = 3;


-- Updating Multiple Rows
-- To update multiple rows, specify a condition that matches those rows in the WHERE clause.
UPDATE employees
SET role = 'Senior Developer'
WHERE role = 'Developer';


-- Updating Without WHERE
-- If you omit the WHERE clause, all rows in the table will be updated.
UPDATE employees
SET role = 'Staff';


-- Conditional Updates Using a Subquery
-- You can also use a subquery in the UPDATE statement to set the value of a column based on a query.
UPDATE employees
SET role = (
    SELECT department_name
    FROM departments
    WHERE departments.department_id = employees.department_id
);
