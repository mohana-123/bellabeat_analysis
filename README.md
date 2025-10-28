# 💪🏼Bellabeat Fitness Tracker Analysis
## Table of Contents
* [Overview](#overview)
* [Business Problem](#business-problem)
* [Dataset](#dataset)
* [Tools & Technologies](#tools--technologies)
* [Project Structure](#project-structure)
* [Data Cleaning & Preparation](#data-cleaning--preparation)
* [Exploratory Data Analysis (EDA)](#exploratory-data-analysis-eda)
* [Research Questions & Key Findings](#research-questions--key-findings)
* [Dashboard](#dashboard)
* [How to Run This Project](#how-to-run-this-project)
* [Final Recommendations](#final-recommendations)
* [Author & Contact](#author--contact)

---

## Overview
This project is a case study for the Google Data Analytics Certificate. It analyzes smart device usage data to gain insights into how consumers use non-Bellabeat smart devices. The goal is to apply these insights to one of Bellabeat's products and marketing strategy.

Bellabeat is a high-tech manufacturer of health-focused products for women. Collecting data on activity, sleep, and health allows Bellabeat to empower women with knowledge about their own health and habits.

---

## Business Problem
The primary business task is to analyze smart device usage data to identify trends. These trends will be used to inform Bellabeat's marketing strategy and apply to one of their products.

The analysis focuses on answering three key business questions:
1.  What are some trends in smart device usage?
2.  How could these trends apply to Bellabeat customers?
3.  How could these trends help influence Bellabeat marketing strategy?

**Stakeholders:**
* **Urška Sršen:** Bellabeat cofounder and Chief Creative Officer
* **Sando Mur:** Cofounder, Mathematician, and key member of the executive team
* **Marketing Analytics Team:** Responsible for collecting, analyzing, and reporting data to guide marketing strategy.

---

## Dataset
This analysis uses the **FitBit Fitness Tracker Data** (a public dataset available on [Kaggle](https://www.kaggle.com/datasets/arashnic/fitbit)). This dataset contains personal health data from 30 Fitbit users who consented to the submission of their personal tracker data, including minute-level output for physical activity, heart rate, and sleep monitoring.

A ROCCC (Reliable, Original, Comprehensive, Current, Cited) analysis of the dataset determined it has the following attributes:
* **Reliable:** Low (data is from only 30 users without demographic information)
* **Originality:** Low (data is from a third-party source)
* **Comprehensive:** High (contains detailed personal health data)
* **Current:** Low (data was generated in 2016)
* **Cited:** High (data source is well-documented)

---

## Tools & Technologies
* **SQL:** Used for combining large tables efficiently, removing duplicates rows.
* **Power BI:** Used for data transformation, analysis, and visualization.
* **Power Query:** Used within Power BI for data cleaning and transformation (e.g., removing duplicates, splitting columns, changing data types, adding new columns).

---

## Project Structure
The project follows the six steps of the data analysis process as outlined by the Google Data Analytics Certificate:
1.  **Ask:** Defining the business task and key questions.
2.  **Prepare:** Identifying and evaluating the dataset.
3.  **Process:** Cleaning and preparing the data for analysis.
4.  **Analyze:** Exploring the data to find trends and relationships.
5.  **Share:** Creating visualizations and a dashboard to share findings.
6.  **Act:** Providing actionable recommendations based on the findings.

---

## Data Cleaning & Preparation
The data preparation was performed using SQL and Power Query in Power BI.
1.  **Imported** 6 relevant CSV files into Power BI.
2.  **Transformed** the data by:
    * Removing duplicates and errors.
    * Splitting columns as needed.
    * Changing data types for proper analysis.
    * Adding new columns, such as `Dayofweek` (from the `Date` column) and `TotalActiveMinutes` (by summing `VeryActiveMinutes`, `FairlyActiveMinutes`, and `LightlyActiveMinutes`).
3.  **Modeled** the data by creating lookup tables for `ID` and `Date` and establishing relationships between the tables.

---

## Exploratory Data Analysis (EDA)
The analysis revealed several key insights into user habits:
* **Activity Levels:** Users spend the vast majority of their time sedentary (81% of the day). Light active minutes account for 16% of the time, while very active minutes are only 2%.
* **Calories & Activity:** There is a strong positive correlation between calories burned and other factors like total steps, total distance, and total active minutes.
* **Daily Patterns:** Users are most active between 6 am and 6 pm, with spikes in both steps and calories burned during this period. Activity drops off significantly after 6 pm.
* **Weekly Patterns:** Users are most active on Saturdays, recording both the highest average heart rate (82.46 bpm) and the longest average active minutes (244.27 minutes, or 4.1 hours).
* **Sleep:** On average, users get between 6.6 and 7.5 hours of sleep. They spend the most time in bed and get the most sleep on Sundays (average 452.75 minutes, or 7.5 hours).
* **Weight & BMI:** Of the 8 users who logged weight, only 3 were in the healthy BMI range (18.5-24.9), while 4 were overweight (25-29.9) and 1 was severely obese (BMI > 40).

---

## Research Questions & Key Findings
This analysis addresses the key business questions by identifying trends in smart device usage.

**Key Findings:**
1.  **Users are largely sedentary:** The 81% sedentary time highlights a major health risk and an opportunity for intervention.
2.  **Activity is concentrated:** Users are most active during the day (6 am-6 pm) and on weekends (specifically Saturdays).
3.  **Activity directly impacts calories:** The positive correlation between steps/active time and calories burned is a key motivational metric.
4.  **Sleep habits vary by day:** Users tend to sleep longer on Sundays, likely compensating for the week.
5.  **Weight management is a concern:** A majority of users (5 out of 8) who tracked weight were in the overweight or obese BMI categories.

---

## Dashboard
A comprehensive dashboard was created in Power BI to visualize these key findings. The dashboard includes charts for:
* Average minutes by activity category (Sedentary, Light, Fairly, Very Active)
* Correlations between calories and steps, distance, and active minutes
* Average steps and calories by the hour of the day
* Average heart rate and active minutes by the day of the week
* Average time in bed and asleep by the day of the week
* A summary table of average weight and BMI for users

---

## How to Run This Project
(Information not available in the article. You can add your own instructions here.)

*Example:*
1.  Clone this repository: `git clone https://github.com/your_username/your_project.git`
2.  Download the dataset from [Kaggle](https://www.kaggle.com/datasets/arashnic/fitbit).
3.  Place the 18 CSV files in the `data/` directory.
4.  Open the `Bellabeat_Case_Study.pbix` file in Power BI Desktop.
5.  Refresh the data sources to connect to the CSV files in your local directory.

---

## Final Recommendations
Based on the analysis, three top recommendations are proposed to influence Bellabeat's marketing strategy:

this is the presentation : [Drive link](https://docs.google.com/presentation/d/1RQL2DzUEOZnk8LL7yQYKN2TCuVpUiyAm7MXU2Qu_w-c/edit?usp=sharing)

1.  **Include More Current Data:** Conduct a new survey targeting 100+ female participants to gather more current (post-2016) data that better reflects Bellabeat's target audience.
2.  **Set Daily Reminders in the Bellabeat App:** Use app notifications to remind users to log data, encourage them to be more active, and help them build good habits (e.g., reminders to move if sedentary for too long).
3.  **Offer Bellabeat Membership Discounts for Activity:** Implement a feature where users can earn discounts on Bellabeat memberships by burning calories. This gamifies exercise, encourages more app engagement, and can drive profit growth by converting more users to the paid membership.

---

## Author & Contact
* **Author:** Mohana Sruthy Mada
* **Contact:** [LinkedIn](https://www.linkedin.com/in/mohana-sruthy-mada/)