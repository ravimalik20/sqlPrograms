/* Union */

select 1 num, 'abc' str
UNION
select 9 num, 'xyz' str;

/* Union merges two queries, sorts and removes duplicates */
select 'IND' type_cd, cust_id, lname name
from individual
union
select 'BUS' type_cd, cust_id, name
from business;

/* Union all does not sort or remove duplicates from the merged data. Number of
rows in the output is always equal to sum of the number of items in individual
queries */
select 'IND' type_cd, cust_id, lname name
from individual
union all
select 'BUS' type_cd, cust_id, name
from business
union all
select 'BUS' type_cd, cust_id, name
from business;
