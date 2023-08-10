
-- Create departments table

departments
-
dept_no VARCHAR   
dept_name VARCHAR 

--Create employees table

employees
-
emp_no INT 
emp_title VARCHAR
birth_date DATE
first_name VARCHAR
last_name VARCHAR 
sex VARCHAR 
hire_date DATE 


-- Create dept_emp table

dept_emp
-
emp_no INT   
dept_no VARCHAR 


-- Create dept_manager table

dept_manager 
-
dept_no VARCHAR   
emp_no INT


-- Create salaries table

salaries
-
emp_no INT  
salary BIGINT 


-- Create titles table

titles
-
title_id VARCHAR
title VARCHAR
