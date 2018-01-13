/* Joining between a range */

/* Joining 2 tables with no FK relationship.Trying to find employee which
joined the bank while no-fee-checking product was being offered. */
select e.emp_id, e.fname, e.lname, e.start_date
from employee as e inner join product as p
	on e.start_date >= p.date_offered
	and e.start_date <= p.date_retired
where p.name = 'checking account';

/* Self-non-equi-join */

/* This query contains extra unnecessary values. Values that have reverse
mappings */
select e1.fname, e1.lname, 'VS' vs, e2.fname, e2.lname
from employee as e1 inner join employee as e2
	on e1.emp_id != e2.emp_id
where e1.title = 'Teller' and e2.title = 'Teller';

/* Corrected using < join condition */
select e1.fname, e1.lname, 'VS' vs, e2.fname, e2.lname
from employee as e1 inner join employee as e2
	on e1.emp_id < e2.emp_id
where e1.title = 'Teller' and e2.title = 'Teller';
