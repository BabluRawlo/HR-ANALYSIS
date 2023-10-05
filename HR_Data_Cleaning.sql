
--# data_cleaning 

--1) Modifying the Table by changing Data Type

--A) Emp_ID from Text to varchar

Alter table hr 
Modify column  Emp_ID  varchar (25);

--B) Date_of_Join from Text to Date

Alter table hr 
Modify column  Date_of_Join  varchar (255);

Alter table hr 
Modify column  Date_of_Join  date;

--C) salary from Text to varchar

Alter table hr
modify column salary varchar (50);


--2) Modifying the Records

--A) Updating the Date Column record into the default Date Format.

UPDATE hr
SET Date_of_Join
 = DATE_FORMAT(STR_TO_DATE(Date_of_Join, '%d-%m-%Y'), '%Y-%m-%d');
 
 --B) Updating the salary column using record using replace function.
 
 update hr
set salary = replace (salary,'$',' ');