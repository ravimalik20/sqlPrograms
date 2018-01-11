/* Sorting data by value of a single column */

select open_emp_id, product_cd from account
order by open_emp_id;

select open_emp_id, product_cd from account
order by product_cd;

/* Sorting in descending order */
select open_emp_id, product_cd from account
order by product_cd desc;


/* Sorting data by 2 values. First by emp_id and then by product_cd */

select open_emp_id, product_cd from account
order by open_emp_id, product_cd;

/* Composite ascending/ descending for multiple columns */
select open_emp_id, product_cd from account
order by open_emp_id desc, product_cd;


/* Sorting by expression */

select cust_id, cust_type_cd, city, state, fed_id
from customer
order by right(fed_id, 3);


/*
* Sorting by numeric placeholders
*
* Instead of using column names, you can provide the index of the column written
* in the select clause.
*/

select emp_id, title, start_date, fname, lname
from employee
order by 2, 5;
