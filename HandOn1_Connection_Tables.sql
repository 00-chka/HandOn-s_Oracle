/* HandsOn 1 --> Merge Tables */
/*
Select Location_id, Street_address, City, State_province, Country_name
From Locations
Natural Join Countries;

Select Last_name, Department_id, Department_name
From Employees 
Natural Join Departments;

Select E.Last_name, E.Job_id, E.Department_id, D.Department_name
From Employees E
Join Departments D On (E.Department_id = D.Department_id)
Join Locations L Using(Location_id)
Where L.City = 'Toronto';

Select E1.Last_name as "Employee", E1.Employee_id as "Emp#", E2.Last_name as "Manager", E2.Employee_id
From Employees E1
Join Employees E2 On (E1.Manager_id = E2.Employee_id);

Select E1.Last_name as "Employee", E1.Employee_id as "Emp#", E2.Last_name as "Manager", E2.Employee_id
From Employees E1
Left Join Employees E2 On (E1.Manager_id = E2.Employee_id)
Order By E1.Last_name;

Select E1.Last_name as "Employee", E1.Hire_date as "Employe Hire Date", E2.Last_Name as "Manager", E2.Hire_date as "Manager Hire Date"
From Employees E1
Join Employees E2 On (E1.Manager_id = E2.Employee_id And E1.Hire_date < E2.Hire_date);
*/