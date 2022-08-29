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

----UC3------
Insert Into employee_payroll(Name, Salary, StartDate) values('tomesh',4009, '2021-09-03')
Insert Into employee_payroll(Name, Salary, StartDate) values('mohan',7095, '2022-04-03')
Insert Into employee_payroll(Name, Salary, StartDate) values('Rohan',6395, '2021-09-21')
Insert Into employee_payroll(Name, Salary, StartDate) values('Govind',6095, '2022-04-22')

----UC4-----
select * from employee_payroll

-----UC5------
Select Salary from employee_payroll where Name = 'mohan'
Select Salary from employee_payroll where StartDate Between CAST('2021-09-03' as date) and GETDATE()