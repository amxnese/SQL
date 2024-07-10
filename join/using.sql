/*
In SQL, the USING clause is often used in conjunction with the JOIN operation to specify 
the column(s) to be used for the join. It is a shorthand method for indicating the columns 
that both tables share and on which the join should be performed. The USING clause simplifies 
the syntax when the columns in both tables have the same name
*/

-- Here is the general syntax for using the USING clause:
SELECT columns
FROM table1
JOIN table2
USING (column_name);

-- Example

-- Consider two tables: employees and departments

/*
Table: employees
employee_id	|  name	    | department_id
1	          |  John Doe	| 10
2	          |  Jane Doe	| 20
*/

/*
Table: departments
department_id	| department_name
10            |	HR
20            | Engineering
*/

-- To join these tables on the department_id column using the USING clause, you would write:
SELECT employee_id, name, department_name
FROM employees
JOIN departments
USING (department_id);
