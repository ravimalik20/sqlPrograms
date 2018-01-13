select e.fname, e.lname, e_mgr.fname mgr_fname, e_mgr.lname mgr_lname
from employee as e inner join employee as e_mgr
	on e.superior_emp_id = e_mgr.emp_id;
