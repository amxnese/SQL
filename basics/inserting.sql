/*
Inserting data into a table in SQL can be done using the INSERT INTO statement. 
There are a few variations of this statement depending on how you want to insert the data.
*/

-- Basic Insert

-- To insert a single row of data into a table, you can specify the columns and values directly.
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);

INSERT INTO employees (employee_id, name, role)
VALUES (3, 'Mike Smith', 'Consultant');


-- Insert Multiple Rows

-- To insert multiple rows of data in a single statement, you can list multiple sets of values.
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1a, value2a, value3a, ...),
      (value1b, value2b, value3b, ...),
      ...;

-- To insert multiple new employees:
INSERT INTO employees (employee_id, name, role)
VALUES (4, 'Alice Jones', 'Designer'),
      (5, 'Bob Brown', 'Tester');

-- Insert Data from Another Table

-- To insert data from another table, you can use a SELECT statement within the INSERT INTO statement.
INSERT INTO table_name (column1, column2, column3, ...)
SELECT column1, column2, column3, ...
FROM another_table
WHERE condition;

INSERT INTO employees (employee_id, name, role)
SELECT employee_id, name, role
FROM new_hires;

-- Insert Default Values
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, DEFAULT, value3, ...);
