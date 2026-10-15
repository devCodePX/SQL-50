# Write your MySQL query statement below
/*
with cte_maxDate as (

    select product_id,new_price,max(change_date) change_date from Products group by product_id
)


select c.product_id,

case 
    when c.change_date = t.change_date then c.new_price 
    when t.change_date is null  then 10
    else t.change_date
    end as price
from  
cte_maxDate c
left join 
(select product_id,new_price,max(change_date)
from Products
where change_date <= "2019-08-16" 
group by product_id)t

on c.product_id = t.product_id

*/
select product_id,new_price as price
from Products
where (product_id,change_date) in
    (select product_id,max(change_date) as change_date
    from Products
    where change_date <= "2019-08-16"
    group by product_id)

union 

select product_id, 10 as price
from Products
group by product_id
having min(change_date)>"2019-08-16"

