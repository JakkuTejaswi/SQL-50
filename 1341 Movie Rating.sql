with cte as(
    select U.name,count(*) as counting from Users U 
    join MovieRating MR
    on U.user_id=MR.user_id
    group by U.name
    order by counting desc, U.name asc
    limit 1
),
rating as(
    select M.title, avg(MR.rating) as avg_rating 
    from Movies M 
    join MovieRating MR 
    on M.movie_id=MR.movie_id
    WHERE MR.created_at BETWEEN '2020-02-01' AND '2020-02-29'
    group by M.title
    order by avg_rating desc, M.title asc
    limit 1
)
select name as results 
from cte
union all 
select title as results 
from rating;

