/*
A CROSS JOIN in SQL is a type of join that produces the Cartesian product of the two tables 
involved. This means that every row from the first table is paired with every row from the
second table. The result set of a CROSS JOIN includes all possible combinations of rows 
from the two tables.
*/

-- To perform a CROSS JOIN on these tables, you would write:
SELECT *
FROM employees
CROSS JOIN departments;

-- OR
SELECT *
FROM employees, departments