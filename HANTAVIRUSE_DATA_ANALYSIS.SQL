use moviesdb
select country,region,COUNT(case_id) as total_cases,
count (hospitalization) as total_hospitalizations
from dbo.global_hantavirus_surveillance_dataset_2026
group by country,region
order by total_cases desc;
---======================================================================================================================
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
----================================================================================================================================
use moviesdb
select PLATFORM,MAX(weekend_screen_hours)
from dbo.screen_time_behavior
where   country in(
select country
from dbo.country_wise_analysis_addiction
where addiction_score>50 and gender='male' )
group by  platform
having MAX(weekend_screen_hours)>13
---==================================================================================================================================
