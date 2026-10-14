select MAX(num) as num
from
(select num from MyNumbers
group by num
having count(*) = 1)t



/*

select MAX(num) as num
from MyNumbers
where num in ( 
        select num
        from MyNumbers
        group by num
        having count(*) = 1)

*/