select P.product_name, sum(O.unit) as unit
from Products P
join Orders O
on P.product_id=O.product_id
where Month(O.order_date)=2 and Year(O.order_date)=2020
group by O.product_id, P.product_name
having sum(O.unit)>=100;