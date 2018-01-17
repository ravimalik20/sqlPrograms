/* Global and session timezones */

select @@global.time_zone, @@session.time_zone;

/* Change session timezone */
set time_zone = '+05:30';

select @@global.time_zone, @@session.time_zone;

/* Converting string to datetime */

select cast('1992-12-20 08:30:00' as DATETIME);

/* str_to_date(string, format) */
select str_to_date('September 17, 2008', '%M %d, %Y');

select current_date(), current_time(), current_timestamp();


/* Manipulating dates and time */

select date_add(current_date(), interval 5 day);

select date_add(current_date(), interval '9-11' YEAR_MONTH);

select date_add(current_date(), interval '3:27:11' HOUR_SECOND);


/* Name of day */
select dayname(current_date());

/* More generic than dayname */
select extract(year from '2008-09-18 22:19:05');


/* datediff(date1, date2); returns number of full days between the dates */

select datediff('2009-09-03', '2009-06-24');
