with cte as(
    select num, count(num) as cnt from MyNumbers
    group by num
)
select max(num) as num from cte 
where cnt=1;
