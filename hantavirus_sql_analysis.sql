--1) LEFT JOIN CHALLENGE
use moviesdb
select wi.country,wi.instagram_minutes_daily,sc.platform
from dbo.country_wise_analysis_addiction as wi
left join dbo.screen_time_behavior as sc
on wi.country=sc.country
order by instagram_minutes_daily desc

-- 2) INNER JOIN CHALLENGE
  use moviesdb
select wi.country, wi.addiction_score, sc.weekend_screen_hours, sc.age_group
from dbo.country_wise_analysis_addiction as wi
inner join dbo.screen_time_behavior as sc
on wi.country = sc.country
order by wi.country asc;

-- 3) RIGHT JOIN CHALLENGE
use moviesd
select transmission_type, platform, weekday_screen_hours
from dbo.global_hantavirus_surveillance_dataset_2026 as ha
right join dbo.screen_time_behavior as sc
on ha.country = sc.country
order by weekday_screen_hours desc;
