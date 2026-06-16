use moviesdb;
with cleandata as (
select  platform,weekend_screen_hours,gender
from dbo.screen_time_behavior
where gender='male'
)
select PLATFORM,
max(weekend_screen_hours) as max_hours,

case 
when  max(weekend_screen_hours)>12then 'very heavy'
else 'moderate'
end as  usage_status
from cleandata
group by platform