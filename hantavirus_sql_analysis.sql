use moviesdb
select wi.country,wi.instagram_minutes_daily,sc.platform
from dbo.country_wise_analysis_addiction as wi
left join dbo.screen_time_behavior as sc
on wi.country=sc.country
order by instagram_minutes_daily desc