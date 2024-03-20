-- List the employee number, last name, first name, sex, and salary of each employee. 
Select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary from employees 
left join salaries on employees.emp_no = salaries.emp_no 

-- List the first name, last name, and hire date for the employees who were hired in 1986.
Select employees.first_name, employees.last_name, employees.hire_date from employees
WHERE employees.hire_date LIKE '%1986'; 

-- List the manager of each department along with their department number, department name, employee number, last name, and first name.
Select dept_manager.dept_no, departments.dept_name, employees.emp_no, employees.last_name, employees.first_name from employees
left join  

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.


-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.


-- List each employee in the Sales department, including their employee number, last name, and first name.


-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.


-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).