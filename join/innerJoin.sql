-- join is used to combine more than one table into a single search query
-- the tables should to be related to eachother by primary keys and foreign keys

-- INNER JOINS
-- using inner join to fetch data from two tables that share the same database
SELECT * FROM custumers JOIN store ON custumers.store_id = store.store_id;
-- in this example, the custumers table have a foreign key related to the store table


-- EXTERNAL JOINS
-- using external join to fetch data from two tables that are on different databases
SELECT * FROM customers cs JOIN infos.city ct ON cs.city_id = ct.city_id
/* in this example we are using the customers database, we are not using the infos database so we have to 
  prefix its column (city) by the name of the database, cs and ct are both aliases for the two columns */


-- self join
/*
self-join is a join in which a table is joined with itself. This can be useful when you want to 
compare rows within the same table or relate rows to each other in some way. Here's an example to
illustrate how a self-join works:

Let's say you have an employees table with the following columns: id, name, manager_id. 
The manager_id references the id of another employee who is the manager.
*/

-- To find each employee and their manager, you can perform a self-join on the employees table:
SELECT
    e1.id AS employee_id,
    e1.name AS employee_name,
    e2.id AS manager_id,
    e2.name AS manager_name
FROM
    employees e1
JOIN
    employees e2
ON
    e1.manager_id = e2.id;


-- joining multiple tables
SELECT Customers.CustomerName, Orders.OrderDate, OrderDetails.ProductName
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN OrderDetails od ON o.OrderID = od.OrderID;


-- Compound join condition
/*
In SQL, a compound join condition is used to join two tables based on multiplecolumns. 
This is useful when the relationship between the tables depends on more than one column. 
Here’s an example of how to use a compound join condition in SQL:
*/
SELECT 
    a.column1,
    a.column2,
    b.column3,
    b.column4
FROM 
    table1 a
JOIN 
    table2 b
ON 
    a.column1 = b.column1 AND a.column2 = b.column2;
