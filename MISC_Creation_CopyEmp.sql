REM ******************************
REM Create the COPY_EMP table that will hold same data as EMPLOYEES table
Prompt **** Creating COPY_EMP table ___
Create Table Copy_emp
As Select *
From Employees;
Commit;
REM ******************************
Prompt ********** End of script ...