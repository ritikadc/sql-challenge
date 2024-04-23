-- List the employee number, last name, first name, sex, and salary of each employee. 
Select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary from employees 
left join salaries on employees.emp_no = salaries.emp_no 

-- List the first name, last name, and hire date for the employees who were hired in 1986.
Select employees.first_name, employees.last_name, employees.hire_date from employees
WHERE employees.hire_date LIKE '%1986'; 

-- List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT
    dm.dept_no AS department_number,
    d.dept_name AS department_name,
    dm.emp_no AS manager_employee_number,
    e.last_name AS manager_last_name,
    e.first_name AS manager_first_name
FROM
    dept_manager dm
JOIN
    employees e ON dm.emp_no = e.emp_no
JOIN
    departments d ON dm.dept_no = d.dept_no;

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
Select de.dept_no, employees.emp_no, employees.last_name, employees.first_name, d.dept_name
From dept_emp de 
left join employees on de.emp_no = employees.emp_no 
left join departments d on de.dept_no = d.dept_no 

-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT employees.first_name, employees.last_name, employees.sex  
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- List each employee in the Sales department, including their employee number, last name, and first name.
SELECT e.emp_no, e.last_name, e.first_name
FROM employees e
INNER JOIN dept_emp de ON e.emp_no = de.emp_no
INNER JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
INNER JOIN dept_emp de ON e.emp_no = de.emp_no
INNER JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales', 'Development');

-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name, COUNT(*) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC; 

