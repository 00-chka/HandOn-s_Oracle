/* HandOn 1 --> WHERE*/
/*
Select Last_name, Salary
From Employees
Where Salary > 12000;

Select Last_name, Department_id
From Employees
Where Employee_id = 176;

Select Last_name, Salary
From Employees
Where Salary Not In(5000, 12000);

Select Last_name, Employee_id, Hire_date
From Employees
Where Last_name = 'Matos' Or Last_name = 'Taylor'
Order By Hire_date;

Select Last_name, Department_id
From Employees
Where Department_id = 20 Or Department_id = 50
Order By Last_name;

Select Last_name as "Employee", Salary as "Monthly Salary"
From Employees
Where Salary In(5000, 12000)
And Department_id = 20 Or Department_id = 50;

Select Last_name, Hire_date
From Employees
Where Extract(Year From Hire_date) = 2004;

Select Last_name, Job_id
From Employees
Where Manager_id is NULL;

Select Last_name
From Employees
Where Last_name Like '%a%e%' Or Last_name Like '%e%a%';
*/