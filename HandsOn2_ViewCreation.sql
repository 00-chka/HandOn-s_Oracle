/* Hands On 2 - View Creation */

Create View Employees_vu ("EMPLOYEES", First_name, Department_id)
As Select Employee_id, First_name, Department_id
From Employees;

Select *
From Employees_vu;

Select First_name, department_id
From Employees_vu;

Create View Dept50("EMPNO", "EMPLOYEE", "DEPTNO")
As Select Employee_id, Last_name, Department_id
From Employees
Where Department_id = 50
WITH CHECK OPTION;
/* It does not allow to change Rows with Department_id !=50. */

Select *
From Dept50;

Update Dept50
    Set Deptno = 100;

Create View Salary_vu("EMPLOYEE", "DEPARTMENT", "SALARY", "GRADE")
As Select e.Last_name, d.Department_name, e.Salary, j.Grade
From Employees e
Join Departments d Using(Department_id)
Join Job_grades j On (e.Salary > j.Lowest_sal And e.Salary < j.Highest_sal);

Select *
From Salary_vu;

