CREATE TABLE department (
	dept_no VARCHAR(225) PRIMARY KEY NOT NULL, 
	dept_name VARCHAR(225) NOT NULL
);

SELECT * FROM department;
--DROP TABLE department;

CREATE TABLE department_employee (
	emp_no INT NOT NULL,
	dept_no VARCHAR(225) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES department(dept_no)
);

SELECT * FROM department_employee;
--DROP TABLE department_employee;

CREATE TABLE department_manager (
	dept_no VARCHAR(225) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES department(dept_no)
);

SELECT * FROM department_manager;
--DROP TABLE department_manager;

CREATE TABLE employees (
	emp_no INT PRIMARY KEY NOT NULL,
	emp_title_id VARCHAR(225) NOT NULL,
	birth_date VARCHAR(225) NOT NULL,
	first_name VARCHAR(225) NOT NULL,
	last_name VARCHAR(225) NOT NULL,
	sex VARCHAR(225) NOT NULL,
	hire_date VARCHAR(225) NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

SELECT * FROM employees;
--DROP TABLE employees;

CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM salaries;
--DROP TABLE salaries;

CREATE TABLE titles (
	title_id VARCHAR(225) PRIMARY KEY NOT NULL,
	title VARCHAR(225) NOT NULL
); 

SELECT * FROM titles;
--DROP TABLE titles;

