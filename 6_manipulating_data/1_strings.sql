/* Length function */

select length(char_fld) char_length, length(vchar_fld) vchar_length,
	length(text_fld) text_length
from (select 'kjaskjlasjka' char_fld, 'hjsajsahkashkashj' vchar_fld,
	'jksajklsakjlsakjlsajkldasasdsdasdsdasdasadsadsaddas' text_fld) s;


/* Position. location of substring */

select position('charachters' in vchar_field)
from (select 'hksahjsahjas charachters hdshshk' vchar_field) s;


/* Locate */

select locate('is', vchar_fld, 5)
from (select 'ajklasjka is jkaskjsakj' vchar_fld) s;


/* strcmp() -1 < ; 0 == ; 1 > */

select strcmp('abc', 'abcd'), strcmp('abc', 'abc'), strcmp('bbc', 'abc');


/* concat() */

select concat(fname, ' ', lname) name from employee;

/* insert(string, position, replace, word) */

select fname, insert(fname, 4, 0, ' inserted ') inserted from employee;

/* Replacing using insert */
select fname, insert(fname, 3, 4, 'xx') classified from employee;


/* substring(string, start, length) */

select substring('goodbye cruel world', 9, 5);
