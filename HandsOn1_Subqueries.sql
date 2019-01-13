/* HandsOn1 Subqueries */
/*
Select Employee_id, Last_name, Salary
From Employees
Where Salary >
            (Select Avg(Salary)
            From Employees)
Order By Salary;

Select Last_name, Department_id, Job_id
From Employees
Where Department_id In
                    (Select Department_id
                    From Departments
                    Where Location_id = 1700);
==========OR==================
Select E.Last_name, E.Department_id, E.Job_id
From Employees E
Join Departments D On (E.Department_id = D.Department_id)
Where Location_id = 1700;

Select Last_name
From Employees
Where Salary > Any
                (Select Salary
                From Employees
                Where Department_id = 60);

Select Last_name, Salary
From Employees
Where Salary > 
            (Select Avg(Salary)
            From Employees)
And Department_id In
            (Select Department_id
            From Employees
            Where Last_name Like '%u%');
*/