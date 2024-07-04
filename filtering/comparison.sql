-- comparison operators:
--   equality operator : =
--   greater than operator : >
--   greater than or equal operator : >=
--   lesser than operator : <
--   lesser than or equal operator : <=
--   inequality operator : != or <>

-- fetching filtered data

-- using equality operator
SELECT username FROM students WHERE first_name = 'john';

-- using greater than and lesser than operator
SELECT brand FROM products WHERE price < 900;
SELECT id FROM canditates WHERE points > 1000;

-- using multiple conditions
SELECT model FROM cars WHERE price > 20000 AND brand = 'chevrolet';

-- when combining the AND op and the OR op, the AND op is evaluated first
SELECT player_name FROM players WHERE kit_num = 10 OR goals > 20 AND assists > 10;

-- the NOT operator
SELECT beaches FROM states WHERE NOT state_name = 'miami';

-- the IN operator
-- writing the same expression, one with the OR op and one with the IN op
SELECT video FROM playlist WHERE duration = 10 OR duration = 20 OR duration = 30;
SELECT video FROM playlist WHERE duration IN (10, 20, 30)

-- the BETWEEN operator
SELECT product_name FROM products WHERE price >= 100 AND price <= 200;
-- same expression using between
SELECT product_name FROM products WHERE price BETWEEN 100 AND 200;

-- filtering data by dates using between
SELECT * from students WHERE birthdate BETWEEN '2000-02-04' AND '2004-02-05';

-- fetching the students that do not have a licence
SELECT student_id as FROM students WHERE licence IS NULL
