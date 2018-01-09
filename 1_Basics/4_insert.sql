/*
* Also altering the table to make primary key auto increment
*/

set foreign_key_checks = 0;

alter table person modify person_id smallint unsigned auto_increment;

set foreign_key_checks = 1;

insert into person (person_id, fname, lname, gender, birth_date)
Values(NULL, 'William', 'Turner', 'M', '1972-05-27');

select person_id, lname, fname, birth_date from person;

insert into favourite_food (person_id, food)
values
	(1, 'chicken'),
	(1, 'celery'),
	(1, 'salad'),
	(1, 'butter');

/* Order of the result set in the absence of order by clause is not defined and
* can change. Depends on the query execution engine. */
select food from favourite_food
where person_id = 1
order by food;
