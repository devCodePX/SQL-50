(select u.name as results
from Users u
join MovieRating mr
on u.user_id = mr.user_id
group by u.user_id
order by count(distinct mr.movie_id) desc,u.name
limit 1)

union all

(select m.title
from Movies m
join MovieRating mr
on m.movie_id = mr.movie_id 
-- where mr.created_at  between  "2020-02-01" and "2020-02-29"  essential to find out leap year or not because between includes both
-- or
-- where mr.created_at   >="2020-02-01" and mr.created_at   < "2020-03-01"
where date_format(mr.created_at,"%Y-%m") = "2020-02"
group by m.movie_id
order by avg(mr.rating) desc,m.title
Limit 1);