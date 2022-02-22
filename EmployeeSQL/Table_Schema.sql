DROP TABLE departments

CREATE TABLE departments (
	dept_no VARCHAR(10),
	dept_name VARCHAR(30) NOT NULL,
	PRIMARY KEY (dept_no)
);

SELECT * FROM departments

DROP TABLE employees

CREATE TABLE employees (
	emp_no INTEGER NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	gender VARCHAR NOT NULL,
	hire_date DATE NOT NULL
);

SELECT * FROM employees

DROP TABLE dept_emp

CREATE TABLE dept_emp(
	emp_no INTEGER NOT NULL,
	dept_no VARCHAR(10) NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_emp

DROP TABLE dept_managers

CREATE TABLE dept_managers(
	dept_no VARCHAR(10) NOT NULL,
	emp_no INTEGER NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employess(emp_no)
);

SELECT * FROM dept_managers

DROP TABLE salaries

CREATE TABLE salaries(
	emp_no INTEGER NOT NULL,
	salary BIGINT NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM salaries

DROP TABLE titles

CREATE TABLE titles(
	emp_no INTEGER NOT NULL, FK >- employees.emp_no
	title VARCHAR(20) NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM titles