/* Hands on 2 --> ?????????????? ???????????. */
/*
1---->?rue

2---->True

Select Max(Salary) as "Maxinum", Min(Salary) as "Minimum", Sum(Salary) as "Sum", Avg(Salary) as "Average"
From Employees;

Select Max(Salary) as "Maxinum", Min(Salary) as "Minimum", Sum(Salary) as "Sum", Avg(Salary) as "Average", Job_id
From Employees
Group By Job_id;

Select Job_id, Count(Job_id)
From Employees
Group By Job_id;

Select Count(*) as "Number of Managers"
From Employees
Where Manager_id Is NULL;

Select Max(Salary) - Min(Salary) as "Difference"
From Employees;

Select Manager_id, Min(Salary)
From Employees
Group By Manager_id
Having Manager_id Is Not NULL
And Min(Salary) >= 6000
Order By Min(Salary);

Select Count(*) as "Number_Of_Employees", Extract(Year From Hire_date) as "The_Year"
From Employees
Group By Extract(Year From Hire_date)
Having Extract(Year From Hire_date) In(2005, 2006, 2007, 2008);
*/