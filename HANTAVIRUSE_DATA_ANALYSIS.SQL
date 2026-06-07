use moviesdb
select country,region,COUNT(case_id) as total_cases,
count (hospitalization) as total_hospitalizations
from dbo.global_hantavirus_surveillance_dataset_2026
group by country,region
order by total_cases desc;