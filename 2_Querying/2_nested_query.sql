/* Here the nested query creates a dummy table to select data from. */
select e.emp_id, e.fname, e.lname
from (select emp_id, fname, lname, start_date, title from employee) e;
