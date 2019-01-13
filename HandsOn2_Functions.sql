/* Hands On 2 - Functions */

/*
        --> || Single-Row Function   || -->
        
        -->
        --> || Multiple-Row Function || -->
        -->
        
*/

Select Sysdate From Dual;

Select Employee_id, Last_name, Salary, Round(Salary*1.155) as "New Salary"
From Employees
Order By Employee_id;

Select Employee_id, Last_name, Salary, Round(Salary*1.155) as "New Salary", Round(Salary*1.155) - Salary as "Increase"
From Employees
Order By Employee_id;

Select Concat(Upper(Substr(Last_name,1,1)), Lower(Substr(Last_name,2))) as "Name", Length(Last_name) as "Length"
From Employees
Where Upper(Substr(Last_name,1,1)) In ('J', 'A', 'M');

Select Last_name, Round(Months_between(Sysdate, Hire_date)) as Months_worked
From Employees
Order By Months_worked Desc;
    
Select Last_name || ' ' || Lpad('*', Length(Salary)*2, '*') As "Employees and their salaries"
From Employees
Order by Salary Desc;

Select Last_name, Salary
From Employees
Order By Salary;
