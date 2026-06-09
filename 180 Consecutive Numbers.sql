select distinct L1.num as ConsecutiveNums 
from Logs L1
join Logs L2
on L1.id=L2.id-1
join Logs L3
on L2.id=L3.id-1
where L1.num=L2.num and L2.num=L3.num;
