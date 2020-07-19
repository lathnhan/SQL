
--Aggregate functions
	--Use functions SUM, MIN, MAX, AVG, COUNT to query aggregate statistics
	--Categorize table into groups with GROUP BY
	--Retrive unique values with DISTINCT
	--Other clauses: HAVING, LIKE


USE tutorial;

SELECT SUM(gross) AS sum_gross, MIN(gross) AS min_gross, MAX(gross) AS max_gross
FROM salaries;

SELECT MIN(salarydate) AS max_salarydate
FROM salaries;

SELECT MAX(surname) AS max_surname
FROM employees;

--Use WHERE condition. Display last surname containing the letter r
SELECT MAX(surname) AS last_surname
FROM employees
WHERE surname LIKE '%r%';

--COUNT function returns the number of rows that match the criteria
--Total number of employees
SELECT COUNT(*) AS count_record
FROM employees;

--AVG function returns the average value of a numeric column
SELECT AVG(gross) AS avg_gross
FROM salaries;

--Derive AVG from SUM and COUNT
SELECT SUM(gross) / COUNT(gross) AS avg_gross
FROM salaries;

--COUNT total employees and specific column. Useful for identifying missing data
SELECT COUNT(*) AS count_record, COUNT(bossid) AS count_bossid
FROM employees;

--Use SELECT DISTINCT to retrive unique data entries
--If use more than 1 column, result will list all distinct combinations
SELECT DISTINCT surname
FROM employees;

--Use GROUP BY to categorize table into groups based on group column
SELECT surname
FROM employees
GROUP BY surname;

SELECT surname
FROM employees
WHERE surname > 'J'
GROUP BY surname;

--Optional ORDER BY, must be the last clause.
SELECT surname
FROM employees
WHERE surname > 'J'
GROUP BY surname
ORDER BY surname DESC;

--Aggregate function and GROUP BY
SELECT personid, SUM(gross) AS sum_gross
FROM salaries
GROUP BY personid;

SELECT personid, SUM(gross) AS sum_gross
FROM salaries
WHERE gross > 100
GROUP BY personid;

SELECT personid, SUM(gross) AS sum_gross
FROM salaries
WHERE gross > 400
GROUP BY personid
ORDER BY sum_gross DESC;

--Use HAVING for group conditions. WHERE isn't applicable to group conditions
SELECT personid, SUM(gross) AS sum_gross
FROM salaries
GROUP BY personid
HAVING SUM(gross) > 400
ORDER BY sum_gross DESC;

SELECT personid, SUM(gross) AS sum_gross
FROM salaries
WHERE gross > 100
GROUP BY personid
HAVING SUM(gross) > 400
ORDER BY SUM(gross) ASC;

--More compositional tactics
SELECT departments.name, SUM(salaries.gross) AS sum_gross, AVG(salaries.gross) AS avg_gross
FROM departments	JOIN	employees
							ON departments.depid = employees.depid
					JOIN salaries
							ON employees.employeeid = salaries.personid
GROUP BY departments.name
ORDER BY departments.name ASC;

--Should delete departments from this query
SELECT e.name, e.surname, SUM(s.gross) AS sum_gross, AVG(s.gross) as avg_gross,
	   MAX(s.gross) AS max_gross, MIN(s.gross) AS min_gross, COUNT(*) AS count_sal
FROM departments AS d, employees AS e, salaries AS s
WHERE d.depid = e.depid
	  AND e.employeeid = s.personid
GROUP BY e.name, e.surname;




