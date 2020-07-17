------------------------------------------------------------------------
--Nhan La
--WHERE condition
	--ORDER option
	--String and numeric conditions 
	--NULL condition
	--Interval conditions: BETWEEN, AND, OR
	--Conditions IN and NOT IN
	--Condition LIKE and wildcards
------------------------------------------------------------------------


USE tutorial;

SELECT name, surname, birthdate
FROM employees
WHERE surname = 'Brown';

--ORDER is optional
SELECT name, surname, birthdate
FROM employees
WHERE surname = 'Brown'
ORDER BY birthdate;

SELECT *
FROM employees
WHERE birthdate >= '1975-01-01';

SELECT *
FROM salaries
WHERE gross < 777;

--NULL condition can be used with IS NULL or IS NOT NULL
--It is not possible to compare NULL and other values
SELECT *
FROM employees
WHERE birthdate IS NOT NULL;

--Interval conditions: BETWEEN, AND, OR
SELECT name, surname, birthdate
FROM employees
WHERE birthdate BETWEEN '1970-01-01' AND '1975-12-31';

SELECT name, surname, birthdate
FROM employees
WHERE birthdate >= '1970-01-01' AND birthdate <= '1975-12-31';

SELECT name, surname, birthdate
FROM employees
WHERE birthdate <= '1970-01-01' OR birthdate >= '1975-12-31';

--Conditions IN and NOT IN
	--Equal to a series of OR condition
SELECT *
FROM employees
WHERE name IN ('WILLIAM', 'Emma', 'jacob');

SELECT name, surname, birthdate
FROM employees
WHERE name NOT IN ('WILLIAM', 'EMMA', 'JACOB');

SELECT *
FROM employees
WHERE depid IN (1, 2);

--Condition LIKE for partial column content and wildcards
SELECT name, surname, birthdate
FROM employees
WHERE surname LIKE '%s%';

SELECT name, surname, birthdate
FROM employees
WHERE surname LIKE 'S%mit%';

SELECT name, surname, birthdate
FROM employees
WHERE surname LIKE 'Smit_';

SELECT name, surname, birthdate
FROM employees
WHERE surname NOT LIKE '%S%';

--A more compositional take
SELECT name, surname, birthdate
FROM employees
WHERE (surname IN ('Smith', 'Johnson'))
AND (
		(birthdate IN ('1976-01-12', '1979-05-21'))
	OR	(birthdate IS NULL)
	) 
ORDER BY birthdate DESC;
