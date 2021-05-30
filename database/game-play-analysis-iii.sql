select 
player_id,
event_date,
sum(games_played) over(PARTITION by player_id order by player_id,event_date) as games_played_so_far
from activity