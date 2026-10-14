# Write your MySQL query statement below


/*  Easiest way

select customer_id from customer 
group by customer_id
having count(distinct product_key) = (

    select count(*) from Product
)

*/


select c.customer_id from Customer c join Product p on c.product_key = p.product_key
/* where c.product_key = p.product_key The worked that where condition doing that already done by join condition */ 
group by c.customer_id 

having count(distinct c.product_key) = (  
    
     /* use distict keyword because in customer table can present duplicate values like    1   5
               1   5
               1   6     
                          This customer bought all product but still gives wrong answer because  total count will not match
*/

    select count(product_key) from Product
)
