select * from employee where title = 'Head Teller';

select * from employee
where title = 'Head Teller' and start_date > '2006-01-01';

select * from employee
where (title = 'Head Teller' and start_date > '2006-01-01')
or (title = 'Teller' and start_date > '2007-01-01');
