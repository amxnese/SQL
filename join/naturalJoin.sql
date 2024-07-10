/*
A NATURAL JOIN in SQL is a type of join that automatically joins tables based on columns 
with the same name and data type in both tables. It simplifies the join condition by 
implicitly using all columns that have matching names in the two tables.
*/

-- Here's a basic example to illustrate a NATURAL JOIN:

SELECT employee_id, name, department_id, department_name
FROM employees
NATURAL JOIN departments;
-- This query automatically joins the employees and departments tables based on the department_id 
-- column, which is common to both tables. The result will be:

