/*
Deleting rows in SQL is done using the DELETE statement. This statement allows you to remove
existing records from a table based on a specified condition. If the condition is omitted, 
all rows in the table will be deleted.
*/

-- Basic Syntax
DELETE FROM table_name
WHERE condition;


-- Example
-- deleting an employee with employee_id 3
DELETE FROM employees
WHERE employee_id = 3;


-- Deleting Multiple Rows
DELETE FROM employees
WHERE role = 'Developer';


-- Deleting All Rows
DELETE FROM employees;


-- Conditional Deletion Using a Subquery

-- To delete employees based on a department condition:
DELETE FROM employees
WHERE department_id IN (
    SELECT department_id
    FROM departments
    WHERE department_name = 'HR'
);


-- Deleting a database
DROP DATABASE database_name;