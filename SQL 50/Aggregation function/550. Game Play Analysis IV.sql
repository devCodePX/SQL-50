select round(count(distinct a.player_id)/(select count(distinct player_id) from Activity),2) as fraction

from Activity a join Activity b 
on a.player_id = b.player_id and datediff(b.event_date,a.event_date)=1
where (a.player_id,a.event_date) in (

    select player_id,min(event_date) 
    from Activity
    group by player_id
);
