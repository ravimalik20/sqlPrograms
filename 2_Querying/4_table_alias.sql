/* Linking multiple tables */

select employee.emp_id, employee.fname, employee.lname,
department.name as dept_name
from employee inner join department
on employee.dept_id = department.dept_id;

/* Table alias */

select e.emp_id, e.fname, e.lname, d.name as dept_name
from employee as e inner join department as d
on e.dept_id = d.dept_id;
