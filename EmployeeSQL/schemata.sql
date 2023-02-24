-- SCHEMATA
-- View table columns and datatypes
SELECT * FROM dept_emp;

-- Drop table if exists
DROP TABLE departments;

-- Create new table
CREATE TABLE departments (
	dept_no VARCHAR(4),
	dept_name VARCHAR
);

-- View table columns and datatypes
SELECT * FROM departments;

-- Drop table if exists
DROP TABLE employees;

-- Create new table
CREATE TABLE employees (
	emp_no INT,
	emp_title VARCHAR(5),
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR(1),
	hire_date DATE
);

-- View table columns and datatypes
SELECT * FROM employees;

-- Drop table if exists
DROP TABLE salaries;

-- Create new table
CREATE TABLE salaries (
	emp_no INT,
	salary INT
);

-- View table columns and datatypes
SELECT * FROM salaries;

-- Drop table if exists
DROP TABLE titles;

-- Create new table
CREATE TABLE titles (
	title_id VARCHAR(5),
	title VARCHAR
);

-- View table columns and datatypes
SELECT * FROM titles;
