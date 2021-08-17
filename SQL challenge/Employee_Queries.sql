

-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
Select e.emp_no as Employee_No , e.last_name as Last_Name, e.first_name as First_Name,e.sex as Gender, s.salary as Salary
from Employees e
JOIN salaries as s
on e.emp_no = s.employee_no

-- 2. List first name, last name, and hire date for employees who were hired in 1986.
select first_name,last_name,hire_date 
from Employees
where hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
Select d.dept_no as Department_No, d.dept_name as Department_Name, e.emp_no as Manager_Employee_No , e.last_name as Last_Name, e.first_name as First_Name
from Employees e
JOIN dept_manager as dm
on e.emp_no = dm.emp_no
JOIN departments d
on d.dept_no = dm.dept_no

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
Select e.emp_no as Employee_No , e.last_name as Last_Name, e.first_name as First_Name,d.dept_name as Department_Name
from Employees e
JOIN dept_employee as de
on e.emp_no = de.emp_no
JOIN departments d
on d.dept_no = de.dept_no


-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select first_name as "First Name",last_name as "Last Name",sex as Gender
from Employees
where first_name='Hercules' AND last_name LIKE 'B%';

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
Select e.emp_no as Employee_No , e.last_name as Last_Name, e.first_name as First_Name,d.dept_name as Department_Name
from Employees e
JOIN dept_employee as de
on e.emp_no = de.emp_no
JOIN departments d
on d.dept_no = de.dept_no
where d.dept_name = 'Sales'


-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
Select e.emp_no as Employee_No , e.last_name as Last_Name, e.first_name as First_Name,d.dept_name as Department_Name
from Employees e
JOIN dept_employee as de
on e.emp_no = de.emp_no
JOIN departments d
on d.dept_no = de.dept_no
where d.dept_name = 'Sales'
OR d.dept_name = 'Development'

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select count(last_name) as "Count of Last Name", last_name as "Last Name"
from employees 
group by last_name
order by "Count of Last Name" desc
-- if you want to see the results in the descending order by last names, use (order by last_name desc)




