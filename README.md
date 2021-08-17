# sql-challenge
This is to perform Data Modeling, Data Engineering and Data Analysis of employees at Pewlett Hackard.

# Background
This is to perform Data Analysis on employees of the Pewlett Hackard corporation from the 1980s and 1990s. Based on the data in Employees Database in the PH corporation, There is data in 6 datafiles that need to be Modelled, Engineered and Analyzed.


# Process
1. Review tha data in the CSV files on how the data is.
2. Identify the relationships between the data files.
3. Build entity relationship diagram based on the data in the files (Uploaded).
4. Create tables for each csv file.
5. Identify the primary keys and foreign keys for each table.
6. Import the data into tables from CSV files.
7. Now that the data is loaded, time for Queries.

# Queries
1. List the following details of each employee: employee number, last name, first name, sex, and salary.
    Employee Details and salary are in 2 different tables. So, Employee and Salary tables are joined on emp-no column to get the salary information.
2. List first name, last name, and hire date for employees who were hired in 1986.
   All details needed are in same table Employees. hire_date is date column and so used the filter to get the list of employees from the first day of the year to the last day of      the year.
3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
   Department no and name are in departments table, manager employee no is in dept_manager table and manager name is in employee table.
   2 joins are necessary here between employees, dept_manager and departments tables.
  
4. List the department of each employee with the following information: employee number, last name, first name, and department name.
   Department no and name are in departments table, employee no, dept_no is in dept_employee table and employee name is in employee table.
   2 joins are necessary here between employees, dept_employee and departments tables.
   
5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B"
   This is to display all the employees who have first name as "Hercules" and used like operator to show all the names that start with B.
   
6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
   Employee details are in employee table, department name is in departments table, what department employee belongs to is in dept_employee table.
   2 joins are necessary here between employees, dept_employee and departments tables.
   
7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
   This is the same query as the previous one. However, we're displaying all the employees in both Sales and Development departments using OR operator.
  
8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
   Lot of employees have same last names. This is to get the count of employees that have same last names. This is implemented using count, Group by, order by and desc operators.







