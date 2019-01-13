/* Hands On 1*/
/* 2.1.6

Select last_name, job_id, salary As Sal
From Employees; ---> True.
Select * from DEPT50;

Select * e
From job_grades; --> False.

Select Last_name, Department_id, Hire_Date as "STARTDATE", Employee_id
From Employees;


Select Distinct Department_id
From Employees;

Select Last_name as "Employee", Department_id as "Job", Hire_Date as "STARTDATE", Employee_id as "Emp#"
From Employees;

Select Last_name || Department_id as "Employee and Title"
From Employees;


Select Employee_id || ' ' || First_name || ' ' || Last_name || ' ' ||  Email || ' ' || Phone_number || ' ' || Hire_date
|| ' ' || Job_id || ' ' || Salary || ' ' || Commission_pct || ' ' || Manager_Id || ' ' || Department_id as Output
From Employees;
*/

