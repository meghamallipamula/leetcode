select 
a.player_id,
b.device_id 
from
(
select player_id,min(event_date) as event_date from activity
group by player_id
) a
join Activity b
on a.player_id=b.player_id and a.event_date=b.event_date