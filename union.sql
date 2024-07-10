/*
In SQL, the UNION operator is used to combine the result sets of two or more SELECT 
statements into a single result set. The UNION operator removes duplicate rows from the 
result set, while UNION ALL includes all rows, even duplicates.
*/

-- Example:
SELECT column1, column2, ...
FROM table1
UNION
SELECT column1, column2, ...
FROM table2;

-- Real Example
select customer_id, first_name, points, 'bronze' as type
from customers
where points <= 1000
union
select customer_id, first_name, points, 'silver' as type
from customers
where points BETWEEN 2000 AND 3000
union
select customer_id, first_name, points, 'gold' as type
from customers
where points > 3000
order by first_name


-- If you want to include all rows, including duplicates, you would use UNION ALL:
SELECT person_id, name, role
FROM employees
UNION ALL
SELECT person_id, name, role
FROM contractors;

