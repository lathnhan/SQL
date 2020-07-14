USE tutorial;

SELECT *
FROM employees;

--Select certain columns
SELECT name, surname, birthdate
FROM employees;

--Column alias
SELECT name AS firstname, surname, birthdate
FROM employees;

--Add additional column to the result set
SELECT personid, gross, 30 AS increase_percent
FROM salaries;

SELECT personid, gross, 30 AS increase_percent, gross*1.3 AS new_salary
FROM salaries;

SELECT personid, gross, gross + (gross * 0.3) AS new_salary
FROM salaries;

--Concatenate columns
SELECT surname + ' ' + name AS SurnameAndName, birthdate
FROM employees;

--Order by column values. Default is ASC
SELECT name, surname, birthdate
FROM employees
ORDER BY birthdate;

SELECT name, surname, birthdate
FROM employees
ORDER BY birthdate DESC;

SELECT name, surname, birthdate, height
FROM employees
ORDER BY surname DESC, birthdate ASC;

	--Order by alias
SELECT personid, gross * 1.3 AS new_salary
FROM salaries
ORDER BY new_salary;

	--Order by column position, starting with 1
SELECT personid, gross * 1.3 AS new_salary
FROM salaries
ORDER BY 2;

