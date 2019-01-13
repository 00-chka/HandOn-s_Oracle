/* Hands On 1 Data handling */

Insert Into My_employee
Values
(1, 'Patel', 'Ralph', 'rpatel', 895);

Insert Into My_employee
(id, Last_name, First_name, Userid, Salary)
Values
(2, 'Dancs', 'Betty', 'bdancs', 860);

Insert Into My_employee
(Id, Last_name, First_name, Userid, Salary)
Values
(3, 'Biri', 'Ben', 'bbiri', 1100);

Insert Into My_employee
Values
(4, 'Newman', 'Chad', 'cnewman', 750);

Insert Into My_employee
Values
(5, 'Ropeburn', 'Audrey', 'aropebur', 1550);

Commit;

Update My_employee
Set First_name = 'Drexler'
Where Id = 3;

Update My_employee
Set Salary = Salary + 10
Where Salary < 900;

Delete My_employee
Where Salary > 1000;

Rollback;

Select *
From My_employee;
