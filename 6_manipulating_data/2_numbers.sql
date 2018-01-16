select (37 * 59) / (78 - (8 * 6));

/* Arithmetic functions */

select mod(10, 4);

select pow(2, 19);


/* Number precision */

select ceil(72.445), floor(72.445);

select round(72.499999), round(72.5), round(72.5000001);

/* Round to certain decimal places */
select round(72.0909, 1), round(72.0909, 2), round(72.0909, 3);

/* Truncate discards without rounding. */
select truncate(72.0909, 1), truncate(72.0909, 2), truncate(72.0909, 3);

select round(17, -1), truncate(17, -1);

/* Signed data 1 if +ve, 0 if zero, -1 if -ve*/
select account_id, sign(avail_balance), abs(avail_balance)
from account;
