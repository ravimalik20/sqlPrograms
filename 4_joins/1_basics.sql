/* Normal cartesian product */

select e.fname, e.lname, d.name
from employee as e join department as d;


/* Inner join */

select e.fname, e.lname, d.name
from employee as e inner join department as d
	on e.dept_id = d.dept_id;

/* if name of columns same in both tables, you can use using subclause instead
of on */
select e.fname, e.lname, d.name
from employee as e inner join department as d
	using (dept_id);

/* old style join syntax. Better not to use it. Portability and maintainability
issues */
select e.fname, e.lname, d.name
from employee as e, department as d
where e.dept_id = d.dept_id;

/* multiple inner joins */
select a.account_id, a.cust_id, a.open_date, a.product_cd
from account a INNER JOIN employee as e
	ON a.open_emp_id = e.emp_id
	inner join branch as b
	on e.assigned_branch_id = b.branch_id
where e.start_date < '2007-01-01'
	and (e.title = 'Teller' or e.title = 'Head Teller')
	and b.name = 'Woburn Branch';
