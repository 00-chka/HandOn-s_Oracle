/* Hands On 2 - Processing Multiple Data */

/* ********************************* */

Create Table Sal_history(Employee_id, Hire_date, Salary)
As Select Employee_id, Hire_date, Salary
From Employees
Where 1=2;

Create Table Mgr_history(Employee_id, Manager_id, Salary)
As Select Employee_id, Manager_id, Salary
From Employees
Where 1=2;

Create Table Special_sal(Employee_id, Salary)
As Select Employee_id, Salary
From Employees
Where 1=2;

/* ********************************* */
/* Excercise 1 */
Insert All    
    When 1=1 Then
        Into Sal_history Values(Employee_id, Hire_date, Salary)
        Into Mgr_history Values(Employee_id, Manager_id, Salary)
    When Salary < 20000 Then
        Into Special_sal Values(Employee_id, Salary)         
    Select Employee_id, Hire_date, Salary, Manager_id
    From Employees
    Where Department_id < 125;

/* ********************************* */

Create Table Sales_source_data (
    Employee_id     Number(6),
    Week_id         Number(2),
    Sales_mon       Number(8,2),
    Sales_tue       Number(8,2),
    Sales_wed       Number(8,2),
    Sales_thur      Number(8,2),
    Sales_fri       Number(8,2)
);

Insert Into Sales_source_data
Values
(178, 6, 1750, 2200, 1500, 1500, 3000);

Commit;

Create Table Sales_info (
    Employee_id     Number(6),
    Week            Number(2),
    Sales           Number(8,2)
);

/* ********************************* */
/* Excercise 2 */

Insert Into Sales_info(Employee_id, Week, Sales)
    Select Employee_id, Week_id, (Sales_mon + Sales_tue + Sales_wed + Sales_thur + Sales_fri) as Sales
    From Sales_source_data;

/* ********************************* */

Create Table Emptemp
As Select *
From Employees
Where rownum < 10;

/* ********************************* */
/* Excercise 3 */
/* Deform the names in table Emptemp */

Update Emptemp
Set Last_name = 'AABBCCDDEE';

/* Make sure data from Emptemp is the same as the data from Employees; */
Merge Into Emptemp e1
    Using Employees e2
    On (e1.Employee_id = e2.Employee_id)  
    When Matched Then
        Update Set
            e1.First_name = e2.First_name,
            e1.Last_name = e2.Last_name,
            e1.Email = e2.Email,
            e1.Phone_number = e2.Phone_number,
            e1.Hire_date = e2.Hire_date,
            e1.Job_id = e2.Job_id,
            e1.Salary = e2.Salary,
            e1.Commission_pct = e2.Commission_pct,
            e1.Manager_id = e2.Manager_id,
            e1.Department_id = e2.Department_id
    When Not Matched Then
        Insert
        Values
        (e2.Employee_id, e2.First_name, e2.Last_name, e2.Email, e2.Phone_number, e2.Hire_date, e2.Job_id,
        e2.Salary, e2.Commission_pct, e2.Manager_id, e2.Department_id);
        
    


