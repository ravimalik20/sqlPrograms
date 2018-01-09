/*
* View is simply a query store in data dictionary. Looks and acts like a
* table but no data is associated with it. Hence a virtual table. Views when
* created are available indefinitely.
*/

create view employee_view as
select emp_id, fname, lname, YEAR(start_date) as start_year
from employee;

select * from employee_view;
