/*
197. Rising Temperature

# Write your MySQL query statement below

*/
/* 
select 
    case
        when temperature > previous_temp then id
    end as id

from
(select id,temperature,
    lag(temperature) over (order by id) as previous_temp
from Weather)t      

when condistion match this will give correct answer if not then automaticaly put null, and we dont need it.
*/

select id

from
(select id,temperature,
    lag(temperature) over (order by recordDate) as previous_temp,
    recordDate,
    lag(recordDate) over (order by recordDate) as previous_recordDate

from weather)t

where DateDiff(recordDate,previous_recordDate) = 1 AND  temperature > previous_temp;

