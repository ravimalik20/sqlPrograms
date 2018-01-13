/*
* 2 things to understand when working with NULL:
* 1. An expression can be NULL, but it can never equal null.
* 2. 2 nulls are never equal to each other.
*/

select emp_id, fname, lname, superior_emp_id
from employee
where superior_emp_id is null;

/* Empty in this case. Because the expression cannot equal null. */
select emp_id, fname, lname, superior_emp_id
from employee
where superior_emp_id = null;

/* To find all employees not managed by Ellen Flemming. But this excludes the
one that has NULL as it's supervisor ID. */
select emp_id, fname, lname, superior_emp_id
from employee
where superior_emp_id != 6;

/* This querry also fetches the one with NULL as supervisor. */
select emp_id, fname, lname, superior_emp_id
from employee
where (superior_emp_id != 6)
	OR (superior_emp_id is null);
