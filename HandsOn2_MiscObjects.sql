/* HandsOn2 Sequences, Indexes, Synonyms */

Create Sequence Dept_id_seq
    Increment By 10
    Start With 200
    Maxvalue 1000
    Nocache
    Nocycle;

Insert Into Dept
(Department_id, Department_name)
Values
(Dept_id_seq.Nextval, 'Education');

Insert Into Dept
(Department_id, Department_name)
Values
(Dept_id_seq.Nextval, 'Administration');

Create Index emp_department_id_idx
On Employees(Department_id);

Create Synonym Emp_syn
For Employees;

Select *
From Emp_syn
Where Employee_id = 106;

