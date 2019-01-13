/* Table Creation */

Alter table Copy_emp
Add Constraint cp_emp_id_pk Primary Key(Employee_id);

Create Table Dept
As Select *
From Departments;
Alter Table Dept
Add Constraint dpt_dptid_pk Primary Key(Department_id);
Alter Table Dept
Add Constraint unique_dpt_nm Unique(Department_name);

Alter Table Copy_emp
Add Constraint cp_emp_detp_id_fk Foreign Key(Department_id)
References Dept(Department_id);

Insert Into Copy_emp
Values
(350, 'Christos', 'Jacobs', 'chka__@outlook.com', '52532523', '23-MAR-06', 'ST_CLERK', 2342, Null, 23, 300);

/* it shows that there is a integrity constraint violated
Parent Key not found. What happened is that it searched the FK Departmnet_id
and did not found the parent one In Dept table. */

Create Table Copy_emp2(
    Id Number(7),
    Last_name Varchar2(25),
    First_name Varchar2(25),
    Dept_id Number(7));