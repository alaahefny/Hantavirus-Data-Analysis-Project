use moviesdb
select PLATFORM,MAX(weekend_screen_hours)
from dbo.screen_time_behavior
where   country in(
select country
from dbo.country_wise_analysis_addiction
where addiction_score>50 and gender='male' )
group by  platform
having MAX(weekend_screen_hours)>13