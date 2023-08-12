
-- Create departments table

departments
-
dept_no PK VARCHAR   
dept_name VARCHAR 

--Create employees table

employees
-
emp_no PK INT 
emp_title VARCHAR FK >- titles.title_id
birth_date DATE
first_name VARCHAR
last_name VARCHAR 
sex VARCHAR 
hire_date DATE 


-- Create dept_emp table

dept_emp
-
emp_no INT FK >- employees.emp_no 
dept_no VARCHAR FK >- departments.dept_no


-- Create dept_manager table

dept_manager 
-
dept_no VARCHAR FK >- departments.dept_no
emp_no INT FK >- employees.emp_no


-- Create salaries table

salaries
-
emp_no INT FK >- employees.emp_no
salary BIGINT 


-- Create titles table

titles
-
title_id PK VARCHAR 
title VARCHAR
