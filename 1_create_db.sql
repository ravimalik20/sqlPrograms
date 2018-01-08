/*
* Will create a new database: bank, and create a user named learnsql, password
* 123456 and grant all privileges to this user pertaining to bank db.
*
* To execute this script, you can use the following shell command:
* mysql-u root -p < 1_create_db.sql
*
* After this shell command runs successfully, you can log into mysql server
* using the new username, password and start woring on the bank db.
*/

create database bank;
grant all privileges on bank.* to 'learnsql'@'localhost' identified by '123456';

