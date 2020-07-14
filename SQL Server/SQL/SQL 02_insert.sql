--INSERT INTO: insert a new row in a table
	--INSERT INTO table_name(column1, column2, ...) VALUES (value1, value2...);
	--Columns can be put in any order 
	--Character and date values are put in quotes
	--Cannot omit inserting data into PRIMARY KEY or NOT NULL
		--depid is a FOREIGN KEY so it can contains NULL


INSERT INTO departments (depid, name) VALUES (1, 'Management');
INSERT INTO departments (name, depid) VALUES ('Administration', 2);

INSERT INTO departments VALUES (3, 'Technological');

INSERT INTO departments (depid, name) VALUES (4, 'Business');
INSERT INTO departments (depid, name) VALUES (5, 'Support');

INSERT INTO employees (employeeid, depid, surname, name, birthdate, height, bossid) VALUES (1, 1, 'Smith', 'Jacob', '1976-01-12', 1.67, NULL); 
INSERT INTO employees (employeeid, depid, surname, name, birthdate, height, bossid) VALUES (2, 2, 'Johnson', 'Ethan', '1979-05-21', 1.92, 1);
INSERT INTO employees (employeeid, depid, surname, name, birthdate, height, bossid) VALUES (3, 3, 'Williams', 'Isabella', '1967-02-12', 1.72, 1);
INSERT INTO employees (employeeid, depid, surname, name, birthdate, height, bossid) VALUES (4, 2, 'Jones', 'Alexander', '1971-08-07', 1.68, 2);
INSERT INTO employees (employeeid, depid, surname, name, birthdate, height, bossid) VALUES (5, 3, 'Brown', 'Joshua', '1982-04-01', 1.79, 3);
INSERT INTO employees (employeeid, depid, surname, name, birthdate, height, bossid) VALUES (6, 4, 'Davis', 'Jan', '1972-12-30', 1.93, 3);
INSERT INTO employees (employeeid, depid, surname, name, birthdate, height, bossid) VALUES (7, 5, 'Smith', 'Madison', NULL, NULL, 4);
INSERT INTO employees (employeeid, depid, surname, name, birthdate, height, bossid) VALUES (8, 5, 'Williams', 'Joshua', NULL, 1.7, 3);
INSERT INTO employees (employeeid, depid, surname, name, birthdate, height, bossid) VALUES (9, 1, 'Novicki', 'William', '1976-03-07', 1.69, 4);
INSERT INTO employees (employeeid, depid, surname, name, birthdate, height, bossid) VALUES (10, 2, 'Miller', 'Emma', '1989-09-03', 1.92, 1);
INSERT INTO employees (employeeid, depid, surname, name, birthdate, height, bossid) VALUES (11, 4, 'Moore', 'Laurence', '1977-08-27', 1.72, 4);
INSERT INTO employees (employeeid, depid, surname, name, birthdate, height, bossid) VALUES (12, 2, 'Brown', 'Madison', '1961-07-21', 1.68, 2);
INSERT INTO employees (employeeid, depid, surname, name, birthdate, height, bossid) VALUES (13, 4, 'Davis', 'Alexander', '1980-04-23', 1.72, 4);
INSERT INTO employees (employeeid, depid, surname, name, birthdate, height, bossid) VALUES (14, 4, 'Taylor', 'Olivia', '1977-04-23', 1.72, 4);
INSERT INTO employees (employeeid, surname, name, birthdate, height, bossid) VALUES (15, 'Moore', 'Madison', '1970-04-29', 1.78, 5);

INSERT INTO employees (employeeid, depid, surname, name, birthdate, height, bossid) VALUES (16, 2, 'Baramowski', 'Jacob', '1975-04-24', 1.85, 2);
INSERT INTO employees (employeeid, depid, surname, name, birthdate, height, bossid) VALUES (17, 4, 'Jakow', 'Isabella', '1975-04-23', 1.69, 4);
INSERT INTO employees (employeeid, depid, surname, name, birthdate, height, bossid) VALUES (18, 2, 'Jackson', 'Robert', '1975-04-24', 1.75, 2);
INSERT INTO employees (employeeid, depid, surname, name, birthdate, height, bossid) VALUES (19, 4, 'Taylor', 'Jurgen', '1977-05-21', 1.84, 3);
INSERT INTO employees (employeeid, depid, surname, name, birthdate, height, bossid) VALUES (20, 4, 'Williams', 'Emma', '1959-04-20', 1.82, 4);
INSERT INTO employees (employeeid, depid, surname, name, birthdate, height, bossid) VALUES (21, 3, 'Jones', 'Joshua', '1982-02-22', 1.79, 3);
INSERT INTO employees (employeeid, depid, surname, name, birthdate, height, bossid) VALUES (22, 4, 'Anderson', 'William', '1972-10-10', 1.93, 3);
INSERT INTO employees (employeeid, depid, surname, name, birthdate, height, bossid) VALUES (23, 5, 'Smith', 'Anthony', NULL, NULL, 4);
INSERT INTO employees (employeeid, depid, surname, name, birthdate, height, bossid) VALUES (24, 5, 'Miller', 'Ethan', '1973-11-21', NULL, 4);
INSERT INTO employees (employeeid, depid, surname, name, birthdate, height, bossid) VALUES (25, 2, 'White', 'Jan', NULL, 1.73, 5);
INSERT INTO employees (employeeid, depid, surname, name, birthdate, height, bossid) VALUES (26, 1, 'Polakow', 'Anthony', '1968-04-24', 1.86, 1);
INSERT INTO employees (employeeid, depid, surname, name, birthdate, height, bossid) VALUES (27, 3, 'Wilson', 'Emma', '1974-04-29', 1.75, 2);
INSERT INTO employees (employeeid, depid, surname, name, birthdate, height, bossid) VALUES (28, 2, 'Brown', 'Laurence', NULL, 1.82, 3);
INSERT INTO employees (employeeid, depid, surname, name, birthdate, height, bossid) VALUES (29, 4, 'Thomas', 'Jacob', '1983-03-01', 1.93, 4);
INSERT INTO employees (employeeid, depid, surname, name, birthdate, height, bossid) VALUES (30, 4, 'Johnson', 'Olivia', '1986-04-20', 1.00, 4);
INSERT INTO employees (employeeid, depid, surname, name, birthdate, height, bossid) VALUES (31, 3, 'Jackson', 'Alexander', '1966-04-20', 1.76, 2);
INSERT INTO employees (employeeid, depid, surname, name, birthdate, height, bossid) VALUES (32, 2, 'Thomas', 'William', '1969-04-20', 1.7, 4);
INSERT INTO employees (employeeid, depid, surname, name, birthdate, height, bossid) VALUES (33, 3, 'Wilson', 'Isabella', '1980-06-20', NULL, 4);
INSERT INTO employees (employeeid, depid, surname, name, birthdate, height, bossid) VALUES (34, 4, 'Anderson', 'Ethan', '1970-07-14', 1.73, 5);
INSERT INTO employees (employeeid, depid, surname, name, birthdate, height, bossid) VALUES (35, 5, 'Johnson', 'Olivia', '1977-04-03', 1.07, 4);

INSERT INTO salaries (salaryid, personid, gross, salarydate) VALUES (1, 1, 111, '2011-01-07');
INSERT INTO salaries (salaryid, personid, gross, salarydate) VALUES (2, 3, 222, '2011-02-07');
INSERT INTO salaries (salaryid, personid, gross, salarydate) VALUES (3, 1, 333, '2011-12-17');
INSERT INTO salaries (salaryid, personid, gross, salarydate) VALUES (4, 2, 4444, '2011-11-22');
INSERT INTO salaries (salaryid, personid, gross, salarydate) VALUES (5, 4, 555, '2011-01-03');
INSERT INTO salaries (salaryid, personid, gross, salarydate) VALUES (6, 1, 666, '2011-11-19');
INSERT INTO salaries (salaryid, personid, gross, salarydate) VALUES (7, 5, 777, '2011-07-24');
INSERT INTO salaries (salaryid, personid, gross, salarydate) VALUES (8, 2, 888, '2011-02-14');
INSERT INTO salaries (salaryid, personid, gross, salarydate) VALUES (9, 1, 999, '2011-01-03');
INSERT INTO salaries (salaryid, personid, gross, salarydate) VALUES (10, 6, 111, '2011-10-07');
INSERT INTO salaries (salaryid, personid, gross, salarydate) VALUES (11, 6, 333, '2011-02-19');
INSERT INTO salaries (salaryid, personid, gross, salarydate) VALUES (12, 6, 999, '2011-01-07');
INSERT INTO salaries (salaryid, personid, gross, salarydate) VALUES (13, 6, 666, '2011-03-27');
INSERT INTO salaries (salaryid, personid, gross, salarydate) VALUES (14, 7, 111, '2011-04-09');
INSERT INTO salaries (salaryid, personid, gross, salarydate) VALUES (15, 11, 222, '2011-03-17');
INSERT INTO salaries (salaryid, personid, gross, salarydate) VALUES (16, 17, 333, '2011-06-17');
INSERT INTO salaries (salaryid, personid, gross, salarydate) VALUES (17, 16, 444, '2011-11-12');
INSERT INTO salaries (salaryid, personid, gross, salarydate) VALUES (18, 14, 555, '2011-05-08');
INSERT INTO salaries (salaryid, personid, gross, salarydate) VALUES (19, 12, 666, '2011-10-19');
INSERT INTO salaries (salaryid, personid, gross, salarydate) VALUES (20, 15, 777, '2011-05-14');
INSERT INTO salaries (salaryid, personid, gross, salarydate) VALUES (21, 12, 888, '2011-07-14');
INSERT INTO salaries (salaryid, personid, gross, salarydate) VALUES (22, 3, 999, '2011-07-03');
INSERT INTO salaries (salaryid, personid, gross, salarydate) VALUES (23, 1, 111, '2011-12-07');
INSERT INTO salaries (salaryid, personid, gross, salarydate) VALUES (24, 16, 333, '2011-09-19');
INSERT INTO salaries (salaryid, personid, gross, salarydate) VALUES (25, 26, 999, '2011-11-07');
INSERT INTO salaries (salaryid, gross, salarydate) VALUES (26, 1666, '2011-09-11');
INSERT INTO salaries (salaryid, personid, gross, salarydate) VALUES (27, 11, 111, '2011-09-23');
INSERT INTO salaries (salaryid, personid, gross, salarydate) VALUES (28, 4, 222, '2011-03-08');
INSERT INTO salaries (salaryid, personid, gross, salarydate) VALUES (29, 6, 333, '2011-07-01');
INSERT INTO salaries (salaryid, personid, gross, salarydate) VALUES (30, 8, 444, '2011-06-16');
INSERT INTO salaries (salaryid, personid, gross, salarydate) VALUES (31, 1, 555, '2011-03-13');
INSERT INTO salaries (salaryid, personid, gross, salarydate) VALUES (32, 2, 666, '2011-05-25');
INSERT INTO salaries (salaryid, personid, gross, salarydate) VALUES (33, 5, 777, '2011-11-27');
INSERT INTO salaries (salaryid, personid, gross, salarydate) VALUES (34, 3, 888, '2011-10-11');
INSERT INTO salaries (salaryid, personid, gross, salarydate) VALUES (35, 6, 666, '2011-12-01');
INSERT INTO salaries (salaryid, personid, gross, salarydate) VALUES (36, 7, 555, '2011-12-01');
INSERT INTO salaries (salaryid, personid, gross, salarydate) VALUES (37, 7, 111, '2011-12-01');
INSERT INTO salaries (salaryid, personid, gross, salarydate) VALUES (38, NULL, 999, '2011-08-21');

INSERT INTO bonuses VALUES (1, 1, 'I Prize');
INSERT INTO bonuses VALUES (2, 3, 'II Prize');
INSERT INTO bonuses VALUES (3, 7, 'III Prize');
INSERT INTO bonuses VALUES (4, 1, 'Premium');
INSERT INTO bonuses VALUES (5, 5, 'Prize');
INSERT INTO bonuses VALUES (6, 1, 'Prize');
INSERT INTO bonuses VALUES (7, 8, 'Prize');
INSERT INTO bonuses VALUES (8, 3, 'Premium');
INSERT INTO bonuses VALUES (9, 3, 'Prize');
INSERT INTO bonuses VALUES (10, 8, 'Prize');
INSERT INTO bonuses VALUES (12, 2, 'Premium');
INSERT INTO bonuses VALUES (13, 3, 'Premium');
INSERT INTO bonuses VALUES (14, 1, 'III Prize');
INSERT INTO bonuses VALUES (15, 1, 'Premium');
INSERT INTO bonuses VALUES (16, 5, 'Premium');
INSERT INTO bonuses VALUES (17, 11, 'I Prize');
INSERT INTO bonuses VALUES (18, 13, 'Premium');
INSERT INTO bonuses VALUES (19, 23, 'Prize');
INSERT INTO bonuses VALUES (20, 18, 'Prize');
INSERT INTO bonuses VALUES (22, 12, 'Prize');
INSERT INTO bonuses VALUES (23, 13, 'Premium');
INSERT INTO bonuses VALUES (24, 3, 'III Prize');
INSERT INTO bonuses VALUES (25, 1, 'Premium');
INSERT INTO bonuses VALUES (26, 15, 'Premium');
