/* concat() */

select concat(fname, ' ', lname) name from employee;

/* insert(string, position, replace, word) */

select fname, insert(fname, 4, 0, ' inserted ') inserted from employee;

/* Replacing using insert */
select fname, insert(fname, 3, 4, 'xx') classified from employee;


/* substring(string, start, length) */

select substring('goodbye cruel world', 9, 5);
