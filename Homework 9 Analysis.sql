SELECT employees.emp_no,
employees.last_name, 
employees.first_name,
employees.sex,
salaries.salary
FROM employees
JOIN salaries
ON employees.emp_no = salaries.emp_no;

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE ('%1986');

SELECT dept_manager.emp_no,
dept_manager.dept_no,
employees.first_name,
employees.last_name,
departments.dept_name
FROM dept_manager
JOIN employees
ON dept_manager.emp_no = employees.emp_no 
JOIN departments
ON dept_manager.dept_no = departments.dept_no;

SELECT dept_emp.dept_no,
dept_emp.emp_no,
employees.first_name,
employees.last_name,
departments.dept_name
FROM dept_emp
JOIN employees
ON dept_emp.emp_no = employees.emp_no
JOIN departments
ON dept_emp.dept_no = dept_emp.dept_no;

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE ('B%');

SELECT employees.emp_no, 
employees.first_name,
employees.last_name,
dept_emp.dept_no,
departments.dept_name
FROM employees
JOIN dept_emp
ON dept_emp.emp_no = employees.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales';

SELECT employees.emp_no, 
employees.first_name,
employees.last_name,
dept_emp.dept_no,
departments.dept_name
FROM employees
JOIN dept_emp
ON dept_emp.emp_no = employees.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales'
OR departments.dept_name = 'Development';

SELECT last_name, COUNT(*) 
AS frequency_count
FROM employees
GROUP BY last_name
ORDER BY frequency_count DESC;




