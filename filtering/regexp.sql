/* In SQL, you can use regular expressions (regexp) to search for patterns within text. 
Different SQL database systems have different functions for working with regular expressions. 
Here are examples of how to use regular expressions in some popular SQL databases: */

-- Pattern Matching

/*
Basic Patterns:

. : Matches any single character.
* : Matches zero or more occurrences of the preceding element.
+ : Matches one or more occurrences of the preceding element.
? : Matches zero or one occurrence of the preceding element.
| : Acts as an OR operator.
*/

/*
Character Classes:

  [abc] : Matches any single character within the brackets (a, b, or c).
  [^abc] : Matches any single character not within the brackets (not a, b, or c).
  [a-z] : Matches any single character in the range a to z.
  [0-9] : Matches any single digit.
*/

/*
Anchors:

  ^ : Matches the beginning of a string.
  $ : Matches the end of a string.
*/

/*
Quantifiers: 

  Exact Number of Matches: {n}
  Range of Matches: {n, m}
  At Least n Matches: {n,}
*/

/*
Escaping Special Characters:

  To match special characters like . or *, precede them with a backslash (\).
*/

-- In MySQL, you can use the REGEXP or RLIKE operator to match a string against a regular expression.

-- Examples

-- Matching a Simple Pattern: Find names that start with 'J'.
SELECT name FROM employees WHERE name REGEXP '^J';

-- Matching Multiple Patterns: Find names that contain either 'an' or 'en'.
SELECT name FROM employees WHERE name REGEXP 'an|en';

-- Using Character Classes: Find names that start with a vowel.
SELECT name FROM employees WHERE name REGEXP '^[AEIOUaeiou]';

-- Using Quantifiers: Find names that have at least one digit.
SELECT name FROM employees WHERE name REGEXP '[0-9]+';

-- Combining Anchors and Character Classes: Find names that end with 'son'.
SELECT name FROM employees WHERE name REGEXP 'son$';


-- Advanced Usage

-- Matching Word Boundaries:
-- To match whole words, you can use the word boundary metacharacter \\b (double backslash for escaping in SQL strings).
SELECT description FROM products WHERE description REGEXP '\\bapple\\b';

-- Case Sensitivity:
-- Regular expressions in MySQL are case-insensitive by default. To perform a case-sensitive match, use the BINARY keyword.
SELECT name FROM employees WHERE BINARY name REGEXP '^[A-Z]';

-- Negating a Pattern: Find names that do not contain 'an'.
SELECT name FROM employees WHERE name NOT REGEXP 'an';

-- Practical Examples
-- Emails: Find email addresses with a specific domain.
SELECT email FROM users WHERE email REGEXP '@example\\.com$';

-- Phone Numbers: Find phone numbers that match a specific pattern.
SELECT phone_number FROM contacts WHERE phone_number REGEXP '^[0-9]{3}-[0-9]{3}-[0-9]{4}$';

