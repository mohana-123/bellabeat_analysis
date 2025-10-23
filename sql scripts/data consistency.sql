-- checking consistency

-- cleaned_minuteSleep1 ================================================================1

-- Show all columns with datatypes

SELECT 
    COLUMN_NAME,
    DATA_TYPE,
    CHARACTER_MAXIMUM_LENGTH
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'cleaned_minuteSleep1';


-- Check rows that cannot be converted to date
SELECT *
FROM cleaned_minuteSleep1
WHERE TRY_CONVERT(date, date_calender) IS NULL 
      AND date_calender IS NOT NULL;

ALTER TABLE cleaned_minuteSleep1
ALTER COLUMN date_calender date;   -- or VARCHAR(50), DATE, etc.

-- EXEC sp_rename 'cleaned_minuteSleep1.date', 'date_calender', 'COLUMN';



-- cleaned_minuteSleep2 ================================================================2

-- Show all columns with datatypes

SELECT 
    COLUMN_NAME,
    DATA_TYPE,
    CHARACTER_MAXIMUM_LENGTH
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'cleaned_minuteSleep2';


-- Check rows that cannot be converted to date

SELECT *
FROM cleaned_minuteSleep2
WHERE TRY_CONVERT(date, date_calender) IS NULL 
      AND date_calender IS NOT NULL;


ALTER TABLE cleaned_minuteSleep2
ALTER COLUMN date_calender date;

-- EXEC sp_rename 'cleaned_minuteSleep2.date', 'date_calender', 'COLUMN';


-- cleaned_sleepDay ================================================================3

-- Show all columns with datatypes

SELECT 
    COLUMN_NAME,
    DATA_TYPE,
    CHARACTER_MAXIMUM_LENGTH
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'cleaned_sleepDay';

-- Check rows that cannot be converted to date

SELECT *
FROM cleaned_sleepDay
WHERE TRY_CONVERT(datetime, SleepDay) IS NULL 
      AND SleepDay IS NOT NULL;


ALTER TABLE cleaned_sleepDay
ALTER COLUMN SleepDay datetime;



-- dailyActivity1 ================================================================4

-- Show all columns with datatypes

SELECT 
    COLUMN_NAME,
    DATA_TYPE,
    CHARACTER_MAXIMUM_LENGTH
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'dailyActivity1';


-- Check rows that cannot be converted to date

SELECT *
FROM dailyActivity1
WHERE TRY_CONVERT(datetime, ActivityDate) IS NULL 
      AND ActivityDate IS NOT NULL;


ALTER TABLE dailyActivity1
ALTER COLUMN ActivityDate datetime;


-- dailyActivity2 ================================================================5

-- Show all columns with datatypes

SELECT 
    COLUMN_NAME,
    DATA_TYPE,
    CHARACTER_MAXIMUM_LENGTH
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'dailyActivity2';


-- Check rows that cannot be converted to date

SELECT *
FROM dailyActivity2
WHERE TRY_CONVERT(datetime, ActivityDate) IS NULL 
      AND ActivityDate IS NOT NULL;


ALTER TABLE dailyActivity2
ALTER COLUMN ActivityDate datetime;




-- hourlyCalories1 ================================================================6

-- Show all columns with datatypes

SELECT 
    COLUMN_NAME,
    DATA_TYPE,
    CHARACTER_MAXIMUM_LENGTH
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'hourlyCalories1';


-- Check rows that cannot be converted to date

SELECT *
FROM hourlyCalories1
WHERE TRY_CONVERT(datetime, ActivityHour) IS NULL 
      AND ActivityHour IS NOT NULL;


ALTER TABLE hourlyCalories1
ALTER COLUMN ActivityHour datetime;



-- hourlyCalories2 ================================================================7

-- Show all columns with datatypes

SELECT 
    COLUMN_NAME,
    DATA_TYPE,
    CHARACTER_MAXIMUM_LENGTH
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'hourlyCalories2';


-- Check rows that cannot be converted to date

SELECT *
FROM hourlyCalories2
WHERE TRY_CONVERT(datetime, ActivityHour) IS NULL 
      AND ActivityHour IS NOT NULL;


ALTER TABLE hourlyCalories2
ALTER COLUMN ActivityHour datetime;


-- hourlyIntensities1 ================================================================8

-- Show all columns with datatypes

SELECT 
    COLUMN_NAME,
    DATA_TYPE,
    CHARACTER_MAXIMUM_LENGTH
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'hourlyIntensities1';


-- Check rows that cannot be converted to date

SELECT *
FROM hourlyIntensities1
WHERE TRY_CONVERT(datetime, ActivityHour) IS NULL 
      AND ActivityHour IS NOT NULL;


ALTER TABLE hourlyIntensities1
ALTER COLUMN ActivityHour datetime;



-- hourlyIntensities2 ================================================================9

-- Show all columns with datatypes

SELECT 
    COLUMN_NAME,
    DATA_TYPE,
    CHARACTER_MAXIMUM_LENGTH
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'hourlyIntensities2';


-- Check rows that cannot be converted to date

SELECT *
FROM hourlyIntensities2
WHERE TRY_CONVERT(datetime, ActivityHour) IS NULL 
      AND ActivityHour IS NOT NULL;

SELECT *
FROM hourlyIntensities2
WHERE TRY_CONVERT(float, AverageIntensity) IS NULL 
      AND AverageIntensity IS NOT NULL;


ALTER TABLE hourlyIntensities2
ALTER COLUMN ActivityHour datetime;

ALTER TABLE hourlyIntensities2
ALTER COLUMN AverageIntensity float;



-- hourlySteps1 ================================================================10

-- Show all columns with datatypes

SELECT 
    COLUMN_NAME,
    DATA_TYPE,
    CHARACTER_MAXIMUM_LENGTH
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'hourlySteps1';


-- Check rows that cannot be converted to date

SELECT *
FROM hourlySteps1
WHERE TRY_CONVERT(datetime, ActivityHour) IS NULL 
      AND ActivityHour IS NOT NULL;


ALTER TABLE hourlySteps1
ALTER COLUMN ActivityHour datetime;



-- hourlySteps2 ================================================================11

-- Show all columns with datatypes

SELECT 
    COLUMN_NAME,
    DATA_TYPE,
    CHARACTER_MAXIMUM_LENGTH
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'hourlySteps2';


-- Check rows that cannot be converted to date

SELECT *
FROM hourlySteps2
WHERE TRY_CONVERT(datetime, ActivityHour) IS NULL 
      AND ActivityHour IS NOT NULL;


ALTER TABLE hourlySteps2
ALTER COLUMN ActivityHour datetime;



-- weightLog1 ================================================================12

-- Show all columns with datatypes

SELECT 
    COLUMN_NAME,
    DATA_TYPE,
    CHARACTER_MAXIMUM_LENGTH
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'weightLog1';


-- Check rows that cannot be converted to date

SELECT *
FROM weightLog1
WHERE TRY_CONVERT(datetime, date_calender) IS NULL 
      AND date_calender IS NOT NULL;


ALTER TABLE weightLog1
ALTER COLUMN date_calender datetime;

-- EXEC sp_rename 'weightLog1.Date', 'date_calender', 'COLUMN';


-- weightLog2 ================================================================13

-- Show all columns with datatypes

SELECT 
    COLUMN_NAME,
    DATA_TYPE,
    CHARACTER_MAXIMUM_LENGTH
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'weightLog2';


-- Check rows that cannot be converted to date

SELECT *
FROM weightLog2
WHERE TRY_CONVERT(datetime, date_calender) IS NULL 
      AND date_calender IS NOT NULL;


ALTER TABLE weightLog2
ALTER COLUMN date_calender datetime;

-- EXEC sp_rename 'weightLog2.Date', 'date_calender', 'COLUMN';


