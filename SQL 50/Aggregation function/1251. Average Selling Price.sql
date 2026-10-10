/*

# Write your MySQL query statement below
*/
select p.product_id,
    /*
    case 
        when s.product_id is null then 0
    else round(sum(price*units)/sum(units),2 )
        end as average_price */
    ifnull(round(sum(price*units)/sum(units),2),0) as average_price
from Prices p
left join UnitsSold s
on p.product_id = s.product_id and s.purchase_date  between p.start_date and p.end_date
group by p.product_id;