select d.name as Department, e.name as Employee, e.salary as Salary from(
    select emp.*, dense_rank()over(partition by departmentId order by salary desc) as rnk from Employee emp) e
    join Department d
    on e.departmentId=d.id
    where rnk<=3;