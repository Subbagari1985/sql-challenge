create table Titles (
	title_id varchar(30),
	title varchar(255));

Select * from Employees;

create table Dept_manager (
	mgr_no varchar not null,
	FOREIGN KEY (mgr_no) REFERENCES Employees(emp_no),
	dept_no varchar not null,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no));
	
create table Dept_employee (
	emp_no varchar not null,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	dept_no varchar not null,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no));