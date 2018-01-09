/*
* Data Types
*
* 1. Character Data:
* char, varchar
* use char when length of all strings are same, exp: state abbreviations
* use varchar when string lengths vary
* 
* 2. Text Data:
* TinyText, Text, MediumText, LongText
*
* 3. Numeric Data:
* TinyInt, SmallInt, MediumInt, Int, BigInt
* float(p, s), double(p, s)
* p = precision; number of digits both to left and right of the decimal
* s = scale; number of digits to the right of the decimal
*
* 4. Temporal Data:
* date, datetime, timestamp, year, time
*/

/* Display current date-time */
select now();

/*
* Display available charachter sets. 
*
* charachter sets can be applied both to whole DB and individual columns:
* exp: create database db_2 character set utf8;
* exp: varchar(20) character set utf8;
*/
show character set;
