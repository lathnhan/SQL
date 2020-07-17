------------------------------------------------------------------------
--Nhan La
--SQL queries to join tables
	--PRIMARY KEY from one table to match FOREIGN KEY in another table
	--Join tables using WHERE and JOIN clauses
	--Use table alias for readability
	--LEFT OUTER JOIN, RIGHT OUTER JOIN and FULL OUTER JOIN options
	--Join more than 2 tables
	--Use self join to retrieve related records from the same table
	--Other options: WHERE conditions, wild cards, ORDER BY
------------------------------------------------------------------------

USE tutorial;

--PRIMARY KEY from one table matches a FOREIGN KEY in another table
SELECT *
FROM employees, salaries
WHERE employeeid = personid
ORDER BY employeeid;

SELECT name, surname, gross, salarydate
FROM employees, salaries
WHERE employeeid = personid;

SELECT name, surname, gross, salarydate
FROM employees, salaries
WHERE employeeid = personid
ORDER BY surname ASC, salarydate ASC;

--Table names before column names for readability
SELECT employees.name, employees.surname, salaries.gross, salaries.salarydate
FROM employees, salaries
WHERE employees.employeeid = salaries.personid;

	--Use alias
SELECT e.name, e.surname, s.gross, s.salarydate
FROM employees AS e, salaries AS s
WHERE e.employeeid = s.personid
ORDER BY e.surname ASC, salarydate ASC;

--JOIN clause
SELECT e.name, e.surname, s.gross, s.salarydate
FROM employees AS e JOIN salaries as S
ON e.employeeid = s.personid
ORDER BY e.surname ASC, s.salarydate ASC;

	--LEFT OUTTER JOIN select all rows from the first table listed after FROM clause
	--no matter if they have matches in the second table
SELECT e.name, e.surname, s.gross, s.salarydate
FROM employees AS e LEFT OUTER JOIN salaries AS s
ON e.employeeid = s.personid
ORDER BY e.surname ASC, s.salarydate ASC;

	--Can omit OUTER keyword for the same result
SELECT e.name, e.surname, s.gross, s.salarydate
FROM employees AS e LEFT JOIN salaries as s
ON e.employeeid = s.personid
ORDER BY e.surname ASC, s.salarydate ASC;

	--RIGHT OUTER JOIN behaves similarly, by selecting all rows in the second table
SELECT e.name, e.surname, s.gross, s.salarydate
FROM employees AS e RIGHT OUTER JOIN salaries as s
ON e.employeeid = s.personid
ORDER BY e.surname ASC, s.salarydate ASC;

SELECT e.name, e.surname, s.gross, s.salarydate
FROM employees AS e RIGHT JOIN salaries as s
ON e.employeeid = s.personid
ORDER BY e.surname ASC, s.salarydate ASC;

	--FULL OUTER JOIN combines both LEFT and RIGHT
SELECT e.name, e.surname, s.gross, s.salarydate
FROM employees AS e FULL OUTER JOIN salaries AS s
ON e.employeeid = s.personid
ORDER BY e.surname ASC, s.salarydate ASC;

--Use WHERE condition to join
SELECT e.name, e.surname, s.gross, s.salarydate
FROM salaries AS s FULL JOIN employees AS e
ON e.employeeid = s.personid
WHERE s.gross > 700 -- This condition, if applied, works differently than below 
ORDER BY e.surname ASC, s.salarydate ASC;

SELECT e.name, e.surname, s.gross, s.salarydate
FROM employees AS e, salaries AS s
WHERE e.employeeid = s.personid
AND s.gross > 700
ORDER BY e.surname ASC, salarydate ASC;

SELECT e.name, e.surname, s.gross, s.salarydate
FROM employees AS e LEFT OUTER JOIN salaries AS s
ON e.employeeid = s.personid
WHERE e.surname LIKE 'B%'
ORDER BY e.surname ASC, s.salarydate ASC;

--Define WHERE with multiple conditions
SELECT e.name, e.surname, s.gross, s.salarydate
FROM employees AS e LEFT OUTER JOIN salaries AS s
ON e.employeeid = s.personid
WHERE e.surname LIKE 'B%'
	  OR s.gross > 700
ORDER BY e.surname ASC, s.salarydate ASC;

--Join more than 2 tables
SELECT d.name, e.name, e.surname, s.gross, s.salarydate
FROM employees AS e, salaries AS s, departments AS d
WHERE e.employeeid = s.personid
	  AND e.depid = d.depid
ORDER BY d.depid ASC, e.surname ASC, s.salarydate ASC;

--Use JOIN clause
Multiple JOIN condition
SELECT d.name, e.name, e.surname, s.gross, s.salarydate
FROM employees AS e
JOIN salaries AS s ON e.employeeid = s.personid
JOIN departments AS d ON e.depid = d.depid
ORDER BY d.depid ASC, e.surname ASC, s.salarydate ASC;

--Can also use WHERE clause
SELECT d.name, e.name, e.surname, s.gross, s.salarydate
FROM employees AS e
JOIN salaries AS s ON e.employeeid = s.personid
JOIN departments AS d ON e.depid = d.depid
WHERE e.surname LIKE 'B%'
ORDER BY d.depid ASC, e.surname ASC, s.salarydate ASC;

--SELECT all columns
SELECT *
FROM employees AS e, salaries AS s, departments AS d
WHERE e.employeeid = s.personid
	AND e.depid = d.depid
ORDER BY d.depid ASC, e.surname ASC, s.salarydate ASC;

--Use a self-join in nested queries to retrieve related records from the same table
SELECT e1.name, e1.surname, e1.bossid, e2.name AS e2_name, e2.surname AS e2_surname, e2.employeeid
FROM employees AS e1 LEFT OUTER JOIN employees AS e2
ON e1.bossid = e2.employeeid
ORDER BY e1.employeeid ASC;

--Without using LEFT JOIN or RIGHT JOIN, employees without a boss don't appear
SELECT e1.name, e1.surname, e2.name AS boss_name, e2.surname AS boss_surname
FROM employees AS e1, employees AS e2
WHERE e1.bossid = e2.employeeid
ORDER BY e1.employeeid ASC;