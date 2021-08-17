-- Dropping and Creating Employees table
DROP table if exists Employees;
create table Employees (
	emp_no varchar(30), 
	emp_title_id varchar(255),
	birth_date date,
	first_name varchar(255),
	last_name varchar(255),
	sex varchar(10),
	hire_date date,
	primary key (emp_no));
	
-- Dropping and Creating departments table
DROP table if exists departments;
create table departments(
	dept_no varchar(30) primary key,
	dept_name varchar(255));
	
-- Dropping and Creating Dept_employee table
Drop table if exists Dept_employee;	
create table Dept_employee (
	emp_no varchar not null,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	dept_no varchar not null,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	primary key (emp_no,dept_no));

-- Dropping and Creating Dept_manager table
DROP table if exists Dept_manager;
create table Dept_manager (
	dept_no varchar not null,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no varchar not null,	
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	primary key (emp_no,dept_no)
	);

-- Dropping and Creating Titles table
Drop table if exists Titles;
create table Titles (
	title_id varchar(30),
	title varchar(255));

-- Dropping and Creating salaries table
Drop table if exists salaries;
create table salaries(
	employee_no varchar(30) primary key,
	salary varchar(255),
	Foreign key (employee_no) references Employees(emp_no));
	
