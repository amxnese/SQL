/* In SQL, the LIKE operator is used to search for a specified pattern in a column. It is often used with wildcard characters:
    %: Represents zero, one, or multiple characters.
    _: Represents a single character. */

-- Finding records where a column starts with a specific substring:
SELECT * FROM table_name
WHERE column_name LIKE 'pattern%'; -- This query finds all rows where column_name starts with "pattern".

-- Finding records where a column ends with a specific substring:
SELECT * FROM table_name
WHERE column_name LIKE '%pattern';

-- Finding records where a column contains a specific substring:
SELECT * FROM table_name
WHERE column_name LIKE '%pattern%';

-- Finding records where a column matches a specific pattern with a single character wildcard:
SELECT * FROM table_name
WHERE column_name LIKE 'p_ttern'; -- This query finds all rows where column_name matches the pattern "p_ttern", with any single character in place of _.

