--Create database and tables

--PRIMARY KEY constraint: defines a unique identification of each record in a table
	--Each table should have and can have only 1 PRIMARY KEY
--Common data types:
	--VARCHAR(size): character string. Size is specified in parentheses
	--INT: integer value
	--DATE: date value
	--NUMBER(size, d) or FLOAT(size, d): number value. size = total number of digits, d = number of decimal digits
--FOREIGN KEY: one or multiple columns to establish a link between tables
	--FOREIGN KEY points to the PRIMARY KEY of another table
	--Here all departments in table EMPLOYEES must be associated with a department in the table DEPARTMENTS
-- 


CREATE DATABASE tutorial;
USE tutorial;

CREATE TABLE DEPARTMENTS
(
	DEPID INT PRIMARY KEY,
	NAME VARCHAR(50)
);

CREATE TABLE EMPLOYEES
(
	EMPLOYEEID	INT		PRIMARY KEY,
	DEPID		INT		FOREIGN KEY REFERENCES DEPARTMENTS (DEPID),
	SURNAME		VARCHAR(40),
	NAME		VARCHAR(30),
	BIRTHDATE	DATETIME,
	HEIGHT		FLOAT,
	BOSSID		INT
);

CREATE TABLE SALARIES
(
	SALARYID	INT		PRIMARY KEY,
	PERSONID	INT		FOREIGN KEY REFERENCES EMPLOYEES (EMPLOYEEID),
	GROSS		MONEY,
	SALARYDATE	DATETIME
);

CREATE TABLE BONUSES
(
	BONUSID		INT		PRIMARY KEY,
	PERSONID	INT		FOREIGN KEY REFERENCES EMPLOYEES (EMPLOYEEID),
	DESCRIPT	VARCHAR(100)
);

CREATE TABLE [percent]
(
	[birth date]	DATETIME,
	[50]			INT,
	[col*]			INT
);

DROP TABLE [percent]

--SELECT
--    deqs.last_execution_time AS [Time], 
--    dest.TEXT AS [Query]
-- FROM 
--    sys.dm_exec_query_stats AS deqs
--    CROSS APPLY sys.dm_exec_sql_text(deqs.sql_handle) AS dest
--ORDER BY 
--    deqs.last_execution_time DESC