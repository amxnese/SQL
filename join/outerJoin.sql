/*
Outer joins are used to include rows from one or both tables that do not have a matching
row in the other table. There are three types of outer joins: LEFT OUTER JOIN, RIGHT OUTER
JOIN, and FULL OUTER JOIN.
*/

-- LEFT OUTER JOIN
/*
A LEFT OUTER JOIN returns all rows from the left table, and the matched rows from the right table.
If there is no match, the result is NULL from the right side.
*/
SELECT 
    a.column1,
    a.column2,
    b.column3,
    b.column4
FROM 
    table1 a
LEFT JOIN 
    table2 b
ON 
    a.column1 = b.column1;

-- RIGHT OUTER JOIN
/*
A RIGHT OUTER JOIN returns all rows from the right table, and the matched rows from the left table.
If there is no match, the result is NULL from the left side.
*/
SELECT 
    a.column1,
    a.column2,
    b.column3,
    b.column4
FROM 
    table1 a
RIGHT JOIN 
    table2 b
ON 
    a.column1 = b.column1 AND a.column2 = b.column2;

-- FULL OUTER JOIN
/*
A FULL OUTER JOIN returns all rows when there is a match in either left or right table. 
It returns NULL for unmatched rows on either side.
*/
SELECT 
    a.column1,
    a.column2,
    b.column3,
    b.column4
FROM 
    table1 a
FULL OUTER JOIN 
    table2 b
ON 
    a.column1 = b.column1 AND a.column2 = b.column2;
