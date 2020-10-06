select * from salaries

select * from employees

select * from dept_manager

select * from departments

select * from dept_emp

--(1)
select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salarty from employees 
	left join salaries on employees.emp_no = salaries.emp_no;
--(2)	
select first_name, last_name, hire_date from employees
	where hire_date between '1986-01-01' and '1986-12-31';
--(3)	
select dept_manager.emp_no, employees.last_name, employees.first_name, dept_manager.dept_no,  departments.dept_name from dept_manager
	inner join employees on employees.emp_no = dept_manager.emp_no
	inner join departments on departments.dept_no = dept_manager.dept_no
	
--(4)
select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name from employees
	left join dept_emp on dept_emp.emp_no = employees.emp_no
	left join departments on departments.dept_no = dept_emp.dept_no

--(5)
select first_name, last_name, sex from employees
	where first_name = 'Hercules' and last_name like 'B%'
	
--(6)
select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name from employees
	left join dept_emp on dept_emp.emp_no = employees.emp_no
	left join departments on departments.dept_no = dept_emp.dept_no
	where dept_name = 'Sales'
	
--(7)
select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name from employees
	left join dept_emp on dept_emp.emp_no = employees.emp_no
	left join departments on departments.dept_no = dept_emp.dept_no
	where dept_name = 'Sales' or dept_name= 'Development'
	
--(8)
SELECT last_name, count(last_name) as "frequency count"
FROM employees
GROUP BY last_name
ORDER BY "frequency count" DESC;

--(BONUS)
select * from salaries
ORDER BY "salarty" asc;

select * from salaries
where emp_no = 499942
	