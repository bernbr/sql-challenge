-- QUERIES
-- View table columns and datatypes
SELECT * FROM titles;

-- List the employee number, last name, first name, sex, and salary of each employee
SELECT e.emp_no AS "Employee Number", e.last_name AS "Last Name", e.first_name AS "first_name", e.sex, s.salary
FROM employees AS e
  JOIN salaries AS s
  ON (e.emp_no = s.emp_no)
	  
-- List the first name, last name, and hire date for the employees who were hired in 1986
SELECT e.first_name AS "first_name", e.last_name AS "Last Name", e.hire_date
FROM employees AS e
WHERE hire_date >= '1986-01-01'
AND hire_date <= '1986-12-31';
  
-- List the manager of each department along with their department number, department name, employee number, last name, and first name 
SELECT dm.dept_no AS "Department Number", d.dept_name AS "Department Name", e.emp_no AS "Employee Number", e.last_name AS "Last Name", e.first_name AS "first_name"
FROM dept_manager AS dm
  JOIN departments AS d
  ON (dm.dept_no = d.dept_no)
  	JOIN employees AS e
	ON (dm.emp_no = e.emp_no);
  
-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name
SELECT d.dept_no AS "Department Number", e.emp_no AS "Employee Number", e.last_name AS "Employee Last Name", e.first_name AS "Employee First Name", d.dept_name AS "Department Name"
FROM employees AS e
	JOIN dept_emp as de
	ON (e.emp_no = de.emp_no)
		JOIN departments AS d
		ON (de.dept_no = d.dept_no);
		
-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
SELECT e.first_name AS "Employee First Name", e.last_name AS "Employee Last Name", e.sex
FROM employees AS e
WHERE (e.first_name = 'Hercules'
	AND e.last_name LIKE 'B%');

-- List each employee in the Sales department, including their employee number, last name, and first name
SELECT e.emp_no AS "Employee Number", e.last_name AS "Employee Last Name", e.first_name AS "Employee First Name", d.dept_name
FROM dept_emp AS de
	JOIN employees AS e
	ON (e.emp_no = de.emp_no)
		JOIN departments AS d
		ON (de.dept_no = d.dept_no)
		WHERE d.dept_name = 'Sales';
		
-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
SELECT e.emp_no AS "Employee Number", e.last_name AS "Employee Last Name", e.first_name AS "Employee First Name", d.dept_name
FROM dept_emp AS de
	JOIN employees AS e
	ON (e.emp_no = de.emp_no)
		JOIN departments AS d
		ON (de.dept_no = d.dept_no)
		WHERE d.dept_name = 'Sales'
		OR d.dept_name = 'Development';
		
-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
SELECT e.last_name, COUNT(e.last_name) AS "Employee Last Name"
FROM employees AS e
GROUP BY e.last_name
ORDER BY "Employee Last Name" DESC;
