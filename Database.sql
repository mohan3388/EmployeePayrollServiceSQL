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


----UC6----
Alter table employee_payroll 
Add Gender varchar(1)
Update employee_payroll set Gender ='M' where Name = 'rohan' or Name = 'mohan sahu'
Update employee_payroll set Gender ='M' where Name = 'Govind'
Update employee_payroll set Name = 'Priya', Gender='F' where Id=3

----UC7----
select SUM(Salary) from employee_payroll where Gender='F' group by Gender
select AVG(Salary) from employee_payroll where Gender='F' group by Gender
select COUNT(Salary) from employee_payroll where Gender='F' group by Gender
select MAX(Salary) from employee_payroll where Gender='M' group by Gender
select MIN(Salary) from employee_payroll where Gender='M' group by Gender

----UC8----
Alter table employee_payroll Add  bigint, Address varchar(50), Department varchar(30);

---UC9----
Alter table employee_payroll  Add Pay decimal(10), Deduction decimal(10), TaxablePay decimal(10), IncomeTax decimal(10), NetPay decimal(10);

---UC10---
Update employee_payroll set Department = 'Sales' where Name = 'Terrisa'
Insert into employee_payroll (Name, Department) values ('Terrisa', 'Marketing')
