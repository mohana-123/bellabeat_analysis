-- finding duplicates in all tables


-- [dailyActivity1]  ===================================================================1

SELECT *
from [BellaBeat].[dbo].[dailyActivity1]		-- 457 rows

-- m1: check Identical Duplicates
SELECT *, COUNT(*) AS duplicate_count
FROM dailyActivity1
GROUP BY 
	id, ActivityDate, 
	TotalSteps, TotalDistance, 
	LoggedActivitiesDistance, VeryActiveDistance, 
	ModeratelyActiveDistance, LightActiveDistance, 
	SedentaryActiveDistance, VeryActiveMinutes,FairlyActiveMinutes,
	LightlyActiveMinutes, SedentaryMinutes, Calories
HAVING COUNT(*) > 1; 
-- no dups

-- m2: Partial Duplicates (Based on Key Columns)
-- not valid to check


-- [dailyActivity2]  ===================================================================2

SELECT *
from [BellaBeat].[dbo].[dailyActivity2];	--940 rows

-- m1: check Identical Duplicates
SELECT *, COUNT(*) AS duplicate_count
FROM dailyActivity2
GROUP BY 
	Id, ActivityDate, 
	TotalSteps, TotalDistance, TrackerDistance, 
	LoggedActivitiesDistance, VeryActiveDistance, 
	ModeratelyActiveDistance, LightActiveDistance, 
	SedentaryActiveDistance, VeryActiveMinutes,FairlyActiveMinutes,
	LightlyActiveMinutes, SedentaryMinutes, Calories
HAVING COUNT(*) > 1; 

-- m2: Partial Duplicates (Based on Key Columns)
-- not valid to check


-- [hourlyCalories1]  ===================================================================3

SELECT [Id]
      ,[ActivityHour]
      ,[Calories]
  FROM [BellaBeat].[dbo].[hourlyCalories1]		-- 24,084 rows


-- m1: identical duplicates
SELECT *, COUNT(*) AS duplicate_count
FROM hourlyCalories1
GROUP BY 
	Id, ActivityHour, Calories
HAVING COUNT(*) > 1;
-- no dups


-- [hourlyCalories2]  ===================================================================4

SELECT [Id]
      ,[ActivityHour]
      ,[Calories]
  FROM [BellaBeat].[dbo].[hourlyCalories2]		-- 22,099 rows


-- m1: identical duplicates
SELECT *, COUNT(*) AS duplicate_count
FROM hourlyCalories2
GROUP BY 
	Id, ActivityHour, Calories
HAVING COUNT(*) > 1;
-- no dups


-- [hourlyIntensities1]  ===================================================================5

SELECT *
FROM hourlyIntensities1		-- 24,084 rows


SELECT distinct *
FROM hourlyIntensities1		-- 24,084 rows


SELECT *, COUNT(*) AS duplicate_count
FROM hourlyIntensities1
GROUP BY 
	Id, ActivityHour, TotalIntensity, AverageIntensity
HAVING COUNT(*) > 1;
-- no dups


-- [hourlyIntensities2]  ===================================================================6

SELECT *
FROM hourlyIntensities2		-- 22,099 rows


SELECT distinct *
FROM hourlyIntensities2		-- 22,099 rows


SELECT *, COUNT(*) AS duplicate_count
FROM hourlyIntensities2
GROUP BY 
	Id, ActivityHour, TotalIntensity, AverageIntensity
HAVING COUNT(*) > 1;
-- no dups


-- [hourlySteps1]  ===================================================================7

SELECT * FROM hourlySteps1		-- 24,084 rows


SELECT distinct *
FROM hourlySteps1		-- 24,084 rows


SELECT *, COUNT(*) AS duplicate_count
FROM hourlySteps1
GROUP BY 
	Id, ActivityHour, StepTotal
HAVING COUNT(*) > 1;
-- no dups


-- [hourlySteps2]  ===================================================================8

SELECT * FROM hourlySteps2		-- 22,099 rows


SELECT distinct *
FROM hourlySteps2		-- 22,099 rows


SELECT *, COUNT(*) AS duplicate_count
FROM hourlySteps2
GROUP BY 
	Id, ActivityHour, StepTotal
HAVING COUNT(*) > 1;
-- no dups


-- [minuteSleep1]  ===================================================================9

SELECT * FROM minuteSleep1		-- 1,98,559 rows


SELECT distinct *
FROM minuteSleep1		-- 1,98,034 rows


SELECT *, COUNT(*) AS duplicate_count
FROM minuteSleep1
GROUP BY 
	Id, date, value, logId
HAVING COUNT(*) > 1;
-- has 525 rows not dups

-- cleaned data

SELECT DISTINCT *
INTO cleaned_minuteSleep1
FROM minuteSleep1;





-- [minuteSleep2]  ===================================================================10

SELECT * FROM minuteSleep2		-- 1,88,521 rows


SELECT distinct *
FROM minuteSleep2		-- 1,87,978 rows


SELECT *, COUNT(*) AS duplicate_count
FROM minuteSleep2
GROUP BY 
	Id, date, value, logId
HAVING COUNT(*) > 1;
-- has 543 rows not dups

-- cleaned data

SELECT DISTINCT *
INTO cleaned_minuteSleep2
FROM minuteSleep2;



-- [sleepDay]  ===================================================================11

SELECT * FROM sleepDay		-- 413 rows


SELECT distinct *
FROM sleepDay		-- 410 rows


SELECT *, COUNT(*) AS duplicate_count
FROM sleepDay
GROUP BY 
	Id, sleepDay, TotalSleepRecords, TotalMinutesAsleep, TotalTimeInBed
HAVING COUNT(*) > 1;
-- has 3 rows not dups

-- cleaned data

SELECT DISTINCT *
INTO cleaned_sleepDay
FROM sleepDay;



-- [weightLog1]  ===================================================================12

SELECT * FROM weightLog1		-- 33 rows


SELECT distinct *
FROM weightLog1		-- 33 rows


SELECT *, COUNT(*) AS duplicate_count
FROM weightLog1
GROUP BY 
	Id, Date, WeightKg, WeightPounds, Fat, BMI, IsManualReport, LogId
HAVING COUNT(*) > 1;
-- no dups


-- [weightLog2]  ===================================================================13

SELECT * FROM weightLog2		-- 67 rows


SELECT distinct *
FROM weightLog2		-- 67 rows


SELECT *, COUNT(*) AS duplicate_count
FROM weightLog2
GROUP BY 
	Id, Date, WeightKg, WeightPounds, Fat, BMI, IsManualReport, LogId
HAVING COUNT(*) > 1;
-- no dups

