-------UC1-------

create database payroll_service

use payroll_service

-------UC2-------
create table employee_payroll
(
 Id int Identity,
 Name varchar(50),
 Salary int,
 StartDate date
);
