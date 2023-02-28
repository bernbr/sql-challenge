-- SCHEMATA
-- View table columns and datatypes
-- Drop table if exists
DROP TABLE employees;

-- Create new table
CREATE TABLE employees (
	emp_no INT NOT NULL PRIMARY KEY,
	emp_title VARCHAR(5) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date DATE NOT NULL
);

-- View table columns and datatypes
SELECT * FROM employees;

-- Drop table if exists
DROP TABLE departments;

-- Create new table
CREATE TABLE departments (
	dept_no VARCHAR(4) NOT NULL PRIMARY KEY,
	dept_name VARCHAR
);

-- View table columns and datatypes
SELECT * FROM departments;

-- Drop table if exists
DROP TABLE dept_manager;

-- Create new table
CREATE TABLE dept_manager(
	dept_no VARCHAR(4) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY(dept_no, emp_no)
);

-- View table columns and datatypes
SELECT * FROM dept_manager;

-- Drop table if exists
DROP TABLE salaries;

-- Create new table
CREATE TABLE salaries (
	emp_no INT NOT NULL PRIMARY KEY,
	salary INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- View table columns and datatypes
SELECT * FROM salaries;

-- Drop table if exists
DROP TABLE titles;

-- Create new table
CREATE TABLE titles (
	title_id VARCHAR(5) NOT NULL PRIMARY KEY,
	title VARCHAR
);

-- View table columns and datatypes
SELECT * FROM titles;

-- Drop table if exists
DROP TABLE dept_emp;

-- Create new table
CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR(4) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY(emp_no, dept_no)
);

-- View Table cloumns and datatypes
SELECT * FROM dept_emp