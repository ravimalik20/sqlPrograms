/*
* You can create it under a new db 'bank_new'
*
* Step 1: Design
* Step 2: Refinement
* Step 3: Building SQL Statements
*/

/* Added to skip foreign key check while dropping person table. */
SET foreign_key_checks = 0;

drop table if exists person, favourite_food;

SET foreign_key_checks = 1;

create table person
(
	person_id SMALLINT UNSIGNED,
	fname VARCHAR(30),
	lname VARCHAR(30),
	gender ENUM('M', 'F'),
	birth_date DATE,
	street VARCHAR(30),
	state VARCHAR(30),
	country VARCHAR(30),
	postal_code VARCHAR(30),
	constraint pk_person primary key (person_id)
);

desc person;

create table favourite_food
(
	person_id SMALLINT UNSIGNED,
	food VARCHAR(20),
	constraint pk_favourite_food primary key (person_id, food),
	constraint fk_fav_food_person_id foreign key (person_id)
		references person (person_id)
);

desc favourite_food;
