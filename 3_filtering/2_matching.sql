/*
* Useful for when you don't want to match exact values but a pattern
*/

select emp_id, fname, lname
from employee
where left(lname, 1) = 'T';

/* Using wildcards */

select lname from employee
where lname like '_a%e%';

select cust_id, fed_id
from customer
where fed_id LIKE '___-__-____';

/* Using regular expressions */

/* Translates to filter by lname starting with either F or G */
select emp_id, fname, lname
from employee
where lname regexp '^[FG]';
