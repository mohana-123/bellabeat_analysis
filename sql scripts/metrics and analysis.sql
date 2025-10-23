-- tables we have

select * from cleaned_minuteSleep;

select * from cleaned_sleepDay;

select * from dailyActivity;

select distinct Id from dailyActivity

select * from hourlyCalories;

select * from hourlyIntensities;

select * from hourlySteps;

select * from weightLog;

select distinct Id from weightLog;

-- =========================================================================================

select * from dailyActivity;

-- metrics of daily activity table
-- useful rows

SELECT [Id]
      ,[ActivityDate]
      ,[TotalSteps]
      ,[VeryActiveMinutes]
      ,[FairlyActiveMinutes]
      ,[LightlyActiveMinutes]
      ,[SedentaryMinutes]
      ,[Calories]
  FROM dailyActivity

--alter table dailyActivity
--alter column ActivityDate date


select 
	MAX(TotalSteps) as max_steps,
	MAX(VeryActiveMinutes) as max_VeryActiveMinutes,
	MAX(FairlyActiveMinutes) as max_FairlyActiveMinutes,
	MAX(LightlyActiveMinutes) as max_LightlyActiveMinutes,
	MAX(SedentaryMinutes) as max_SedentaryMinutes,
	MAX(Calories) as max_Calories
from dailyActivity


select 
	AVG(TotalSteps) as avg_steps,
	AVG(VeryActiveMinutes) as avg_VeryActiveMinutes,
	AVG(FairlyActiveMinutes) as avg_FairlyActiveMinutes,
	AVG(LightlyActiveMinutes) as avg_LightlyActiveMinutes,
	AVG(SedentaryMinutes) as avg_SedentaryMinutes,
	AVG(Calories) as avg_Calories
from dailyActivity

-- =========================================================================================================================



select * from hourlyCalories;

-- metrics of hourlyCalories table

select 
	Avg(Calories) avg_cal,
	MAX(Calories) max_cal,
	min(Calories) min_cal
from hourlyCalories


select * from hourlyIntensities;

-- metrics of hourlyCalories table

select 
	max(TotalIntensity)
from hourlyIntensities



select * from hourlySteps;

-- metrics of hourlySteps table

select 
	max(StepTotal) maxS,
	min(StepTotal) minS
from hourlySteps



select * from cleaned_minuteSleep;

-- metrics of cleaned_minuteSleep table

-- Show all columns with datatypes
SELECT 
    COLUMN_NAME,
    DATA_TYPE,
    CHARACTER_MAXIMUM_LENGTH
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'cleaned_minuteSleep';

alter table cleaned_minuteSleep
alter column date_calender datetime

select 
	max(StepTotal) maxS,
	min(StepTotal) minS
from cleaned_minuteSleep

select * from weightLog;

select * from cleaned_sleepDay;


-- new metrics

-- cleaned_sleepDay, cleaned_minuteSleep ===========================================================================================================

-- doubt column analysis

-- dates analysis of cleaned_sleepDay  -- total 410 rows
select distinct SleepDay
from cleaned_sleepDay
where SleepDay >= '2016-04-12' and sleepDay <= '2016-05-12'
order by SleepDay asc

-- dates analysis of cleaned_minuteSleep  -- total 3,865 rows
select distinct date_calender
from cleaned_minuteSleep
where date_calender >= '2016-03-11' and date_calender <= '2016-05-12'
order by date_calender asc


-- sleepday analysis ====================================

-- total_time_awake
select
	*,
	(TotalTimeInBed - TotalMinutesAsleep) as total_time_awake
from cleaned_sleepDay

-- avg, max, min minites asleep
select
	AVG(TotalMinutesAsleep)/60 as avg_TotalMinutesAsleep,
	MAX(TotalMinutesAsleep)/60 as max_TotalMinutesAsleep,
	MIN(TotalMinutesAsleep)/60 as min_TotalMinutesAsleep
from cleaned_sleepDay

-- sleep vs activity trends

select * from cleaned_sleepDay

select * from dailyActivity

-- id
select * from dailyActivity da
left join cleaned_sleepDay csd
on da.Id = csd.Id		-- some are not tracking their sleep -- 6,499 rows

-- let analyse 
select 
	da.Id,
	da.ActivityDate,
	da.TotalSteps,
	da.Calories,
	csd.SleepDay
from dailyActivity da
right join cleaned_sleepDay csd
on da.Id = csd.Id and da.ActivityDate = csd.SleepDay
-- 410 rows
