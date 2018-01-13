/* Normal cartesian product */

select e.fname, e.lname, d.name
from employee as e join department as d;

select e.fname, e.lname, d.name
from employee as e join department as d
	on e.dept_id = d.dept_id;
