-- chosing what database to operate on
USE name_of_database;

-- fetching data

-- fetching all data from a certain table
SELECT * FROM name_of_table;

-- fetching specific columns from a certain table
SELECT name_of_column FROM name_of_table;

-- fetching modified data
SELECT points + 10 FROM name_of_table; -- fetches points with an additional 10 points

-- fetching a column as an alias
SELECT price - 20 FROM product AS discount;

-- fetching data in ascending order
SELECT * FROM name_of_table ORDER BY first_name

-- fetching data in descending order
SELECT * FROM name_of_table ORDER BY first_name DESC

-- fetching distinct data (unduplicated data)
SELECT DISTINCT last_name FROM person;

-- fetching the first 5 columns
SELECT * FROM schools LIMIT 5;

-- skipping the first 4 columns and fetching 2 columns after it
SELECT * FROM my_table LIMIT 4, 2;
