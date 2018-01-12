/* between is inclusive of both parameters */
select emp_id, fname, lname, start_date
from employee
where start_date between '2002-01-01' and '2003-01-01'
order by start_date;

/* membership conditions */
select account_id, product_cd, cust_id, avail_balance
from account
where product_cd IN ('CHK', 'SAV', 'CD', 'MM');

/* We can also use a sub-query to generate arguments of the IN operator */
select account_id, product_cd, cust_id, avail_balance
from account
where product_cd IN (select product_cd from product
	where product_type_cd = 'Account');
