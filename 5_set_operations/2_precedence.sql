/*
* Following rules are followed for operator precedence.
*
* 1. Evaluated from top to bottom
* 2. Precedence given to intersect operator
* 3. use () to use the desired precedence
*/

select cust_id from account where product_cd in ('SAV', 'MM')
union all
select a.cust_id from account a
inner join branch b
	on a.open_branch_id = b.branch_id
where b.name = 'Woburn Branch'
union
select cust_id from account where avail_balance between 500 and 2500;

/* Result different after changing operator location */
select cust_id from account where product_cd in ('SAV', 'MM')
union
select a.cust_id from account a
inner join branch b
	on a.open_branch_id = b.branch_id
where b.name = 'Woburn Branch'
union all
select cust_id from account where avail_balance between 500 and 2500;
