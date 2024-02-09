create database project;

select * from cleaned_data;

-- 1) Group the customers based on their income type and find the average of their annual income.
SELECT type_income, AVG(annual_income) AS Avg_Annual_Income FROM Cleaned_data 
GROUP BY type_income;

-- 2) Find the female owners of cars and property.
SELECT * FROM Cleaned_data
WHERE Gender = 'F' AND Car_owner = 'Y' AND Propert_owner = 'Y';

-- 3) Find the male customers who are staying with their families.
SELECT * FROM Cleaned_data
WHERE Gender = 'M' AND Family_Members > 1;

-- 4) Please list the top five people having the highest income.
SELECT * FROM Cleaned_data 
ORDER BY Annual_income DESC
LIMIT 5;

-- 5) How many married people are having bad credit?
SELECT COUNT(*) AS Married_Bad_Credit_Count
FROM Cleaned_Data
WHERE Marital_status = 'Married' AND Label = 1;

-- 6) What is the highest education level and what is the total count?
SELECT Education, COUNT(*) AS Total_Count FROM Cleaned_Data
GROUP BY Education
ORDER BY Total_Count DESC
LIMIT 1;

-- 7) Between married males and females, who is having more bad credit? 
SELECT Marital_status, Gender, COUNT(*) AS Bad_Credit_Count
FROM Cleaned_Data
WHERE Label = 1 AND Marital_status = 'Married'
GROUP BY Marital_status, Gender;







