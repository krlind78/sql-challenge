-- Create departments table
DROP TABLE departments

CREATE TABLE departments (
    dept_no VARCHAR   NOT NULL,
    dept_name VARCHAR   NOT NULL
	PRIMARY KEY (dept_no)
);

select * from departments

--Create employees table
DROP TABLE employees

CREATE TABLE employees (
    emp_no INT NOT NULL,
	emp_title VARCHAR NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    sex VARCHAR NOT NULL,
    hire_date DATE   NOT NULL
	PRIMARY KEY (emp_no)
);

select * from employees

-- Create dept_emp table
DROP TABLE dept_emp

CREATE TABLE dept_emp (
    emp_no INT   NOT NULL,
    dept_no VARCHAR   NOT NULL
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

select * from dept_emp

-- Create dept_manager table
DROP TABLE dept_manager

CREATE TABLE dept_manager (
    dept_no VARCHAR   NOT NULL,
    emp_no INT   NOT NULL
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select * from dept_manager

-- Create salaries table

DROP TABLE salaries

CREATE TABLE salaries (
    emp_no INT   NOT NULL,
    salary BIGINT   NOT NULL
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

select * from salaries

-- Create titles table

DROP TABLE titles

CREATE TABLE titles (
    title_id VARCHAR   NOT NULL,
    title VARCHAR   NOT NULL
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)

);

select * from titles