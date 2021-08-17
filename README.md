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
    ![Query1 result](https://user-images.githubusercontent.com/85588653/129775778-8782f055-d904-4c8a-afb8-04493734cab0.png)

2. List first name, last name, and hire date for employees who were hired in 1986.
   All details needed are in same table Employees. hire_date is date column and so used the filter to get the list of employees from the first day of the year to the last day of      the year.
   ![Query2 result](https://user-images.githubusercontent.com/85588653/129775818-77286c78-31d2-4e0b-99cf-7bcbaf7db1d1.png)

   
3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
   Department no and name are in departments table, manager employee no is in dept_manager table and manager name is in employee table.
   2 joins are necessary here between employees, dept_manager and departments tables.
  ![Query3 result](https://user-images.githubusercontent.com/85588653/129775863-1e789a8a-0598-4ce0-a5c4-fb4c0250e1cb.png)

4. List the department of each employee with the following information: employee number, last name, first name, and department name.
   Department no and name are in departments table, employee no, dept_no is in dept_employee table and employee name is in employee table.
   2 joins are necessary here between employees, dept_employee and departments tables.
   ![Query4 result](https://user-images.githubusercontent.com/85588653/129775893-22caa406-f86b-4309-93ec-2f17caeeda5d.png)

5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B"
   This is to display all the employees who have first name as "Hercules" and used like operator to show all the names that start with B.
   ![Query5 result](https://user-images.githubusercontent.com/85588653/129775923-42de906e-a2bd-471c-9784-8e2b6ee99be2.png)

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
   Employee details are in employee table, department name is in departments table, what department employee belongs to is in dept_employee table.
   2 joins are necessary here between employees, dept_employee and departments tables.
   ![Query6 result](https://user-images.githubusercontent.com/85588653/129775946-f6f74b87-1249-43a2-ab55-db921a15878b.png)

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
   This is the same query as the previous one. However, we're displaying all the employees in both Sales and Development departments using OR operator.
  ![Query7 result](https://user-images.githubusercontent.com/85588653/129775969-4ba199e5-6782-450e-97ee-f8f2386c1a71.png)

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
   Lot of employees have same last names. This is to get the count of employees that have same last names. This is implemented using count, Group by, order by and desc operators.
![Query8 result](https://user-images.githubusercontent.com/85588653/129776000-1e028023-6013-4b41-8f0b-c0ec9b82f3b4.png)







