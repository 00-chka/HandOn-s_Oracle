/* Hands On 2 - Group by extensions. */

Select Manager_id, Job_id, Sum(Salary)
From Employees
Where Manager_id < 120
Group By Rollup(Manager_id, Job_id);

Select Manager_id, Job_id, Sum(Salary),
Grouping(Manager_id) as Grp_manager_id,
Grouping(Job_id) as Grp_job_id
From Employees
Where Manager_id < 120
Group By Rollup(Manager_id, Job_id);

Select Manager_id, Job_id, Sum(Salary),
Grouping(Manager_id) as Grp_manager_id,
Grouping(Job_id) as Grp_job_id
From Employees
Where Manager_id < 120
Group By Cube(Manager_id, Job_id);

Select Department_id, Manager_id, Job_id, Sum(Salary)
From Employees
Group By
Grouping Sets (
    (Department_id, Manager_id, Job_id),
    (Department_id, Job_id),
    (Manager_id, Job_id)
);