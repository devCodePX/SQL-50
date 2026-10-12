

select activity_date as day, count(distinct user_id) as active_users
from Activity
where activity_date between "2019-06-28"  and  "2019-07-27"     
group by activity_date

 /*   ***** we must have to write date in single or double quotes
      there is one bug that  month of 6 is 31 days months and if we included 28 from 6th and 27 from 7th then total 31 days counted, and we have to find only 30 day activite user but for passing all the cases we should consider 31 days.
 
 */