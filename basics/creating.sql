/*
Creating tables in SQL is done using the CREATE TABLE statement. This statement allows 
you to define the structure of a new table, including the column names, data types, and
any constraints. Here's an overview of how to create tables in SQL, along with examples.
*/

-- Basic Syntax
CREATE TABLE table_name (
    column1 datatype constraint,
    column2 datatype constraint,
    ...
);

-- Example
CREATE TABLE employees (
    employee_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    role TEXT,
    department_id INTEGER,
    salary REAL
);

-- Creating a copy of a table
CREATE TABLE archived_notes AS
SELECT * FROM notes;

-- Creating a Table with Constraints
CREATE TABLE departments (
    department_id INTEGER PRIMARY KEY,
    department_name TEXT NOT NULL UNIQUE,
    manager_id INTEGER,
    CHECK (manager_id > 0)
);


-- Creating a Table with Foreign Key
CREATE TABLE employees (
    employee_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    role TEXT,
    department_id INTEGER,
    salary REAL,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

-- Creating a Table with Default Values
CREATE TABLE employees (
    employee_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    role TEXT DEFAULT 'Staff',
    department_id INTEGER,
    salary REAL
);


-- Creating an Auto-Increment Column
CREATE TABLE employees (
    employee_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    role TEXT,
    department_id INTEGER,
    salary REAL
);


-- Creating a database
CREATE DATABASE database_name;
