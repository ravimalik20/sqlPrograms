select emp_id, 'Active', emp_id * 3.14, UPPER(lname)
from employee;

select version(), user(), database();

/* Column Aliases */
select emp_id as Employee_ID,
	'Active' as Status,
	emp_id * 3.14 as Emp_id_x_pi,
	UPPER(lname) as Lname_upper
from employee;

/* Remove duplicates. Distinct requires data to be sorted and can be time
* consuming on large data sets */
select distinct cust_id from account;
