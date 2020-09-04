--Table with all of our olympics data
select * from olympics_data
--Table with a count of each medal won
select * from medal_summary
--Table with count of how many medals one by region
select * from region_summary
--Table with count of each sport
select * from sport_summary

--Count each medal by region
SELECT "Region", "Medal", COUNT(*) AS "Total Medals"
FROM public.olympics_data
GROUP BY 1,2
order by 1