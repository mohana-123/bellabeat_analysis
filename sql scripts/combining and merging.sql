-- Combining and merging tables as one


-- dailyActivity process	======================================================================1

select * from dailyActivity1	-- 457 rows
union
select * from dailyActivity2;	-- 940 rows
-- total 1,397 rows

-- dropping column
alter table dailyActivity2
drop column TrackerDistance

-- creating new table 

SELECT *
INTO dailyActivity
FROM (
		select * from dailyActivity1
		union
		select * from dailyActivity2
	 )t;



-- hourlyCalories process	======================================================================2

select * from hourlyCalories1	-- 24,084 rows
union
select * from hourlyCalories2;	-- 22,099 rows
-- total 46,008 rows


-- creating new table 

SELECT *
INTO hourlyCalories
FROM (
		select * from hourlyCalories1
		union
		select * from hourlyCalories2
	 )t;



-- hourlyIntensities process	======================================================================3

select * from hourlyIntensities1	-- 24,084 rows
union
select * from hourlyIntensities2;	-- 22,099 rows
-- total 46,008 rows


-- creating new table 

SELECT *
INTO hourlyIntensities
FROM (
		select * from hourlyIntensities1
		union
		select * from hourlyIntensities2
	 )t;



-- hourlySteps process	======================================================================4

select * from hourlySteps1	-- 24,084 rows
union
select * from hourlySteps2;	-- 22,099 rows
-- total 46,008 rows


-- creating new table 

SELECT *
INTO hourlySteps
FROM (
		select * from hourlySteps1
		union
		select * from hourlySteps2
	 )t;


-- cleaned_minuteSleep process	======================================================================5


select * from cleaned_minuteSleep1	-- 1,98,034 rows
UNION
select * from cleaned_minuteSleep2;	-- 1,87,978 rows
-- total 3,865 rows WITHOUT DUPLICATES


-- creating new table 

SELECT *
INTO cleaned_minuteSleep
FROM (
		select * from cleaned_minuteSleep1
		union
		select * from cleaned_minuteSleep2
	 )t;



-- weightLog process	======================================================================6


select * from weightLog1	-- 33 rows
UNION
select * from weightLog2;	-- 67 rows
-- total 100 rows WITHOUT DUPLICATES


-- creating new table 


SELECT *
INTO weightLog
FROM (
		select * from weightLog1
		union
		select * from weightLog2
	 )t;