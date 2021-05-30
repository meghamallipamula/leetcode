select 
cast(( count(c.player_id)/(select cast(count( distinct player_id) as float) from activity )) as decimal(36,2)) as fraction 
from
(
select *,datediff(day,b.event_date,b.next_dt) as date_diff from
(select *, lead(a.event_date) over(partition by a.player_id order by a.player_id,a.event_date) as next_dt 
from
(
select *,ROW_NUMBER() over( partition by player_id order by player_id,event_date) as row_num
from activity) a
 )b
 where row_num=1 and next_dt is not null
 )c
where date_diff=1