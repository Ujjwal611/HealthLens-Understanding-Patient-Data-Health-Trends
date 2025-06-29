use project1;
select * from heart;

-- 1. Count the number of patients by Gender.
SELECT Sex, COUNT(*) as Count
FROM heart
GROUP BY Sex;

-- 2. Count the number of patients whose age > 60.
SELECT Sex, COUNT(*) as Count
FROM heart
WHERE Age > 60
GROUP BY Sex;

-- 3. Average age aamong all the patients.
SELECT AVG(Age) AS Average_Age
FROM heart;

-- 4. Count the number of patients for each Chest Pain Type.
SELECT `Chest Pain Type`, COUNT(*) AS Count
FROM heart
GROUP BY `Chest Pain Type`
ORDER BY Count DESC;
 
-- 5. Find the patients details whose Resting Blood Pressure > 140.
SELECT *
FROM heart 
WHERE `Resting Blood Pressure` > 140
ORDER BY Age DESC;

-- 6. Average cholesterol level by Gender
SELECT Sex, AVG(`Serum Cholestoral`) AS `Average Cholestoral`
FROM heart
GROUP BY Sex;

-- 7. Average Heart Rate of Senior Citizen Patients by Gender.
SELECT Sex, AVG(`Maximum Heart Rate`) AS Average_Heart_Rate
FROM Heart
WHERE Age > 60
GROUP BY Sex;

-- 8. Average heart rate by exercise-induced angina
SELECT `Exercise Induced Angina`, AVG(`Maximum Heart Rate`) AS avg_heart_rate
FROM heart
GROUP BY `Exercise Induced Angina`;

-- 9. Count of Resting ECG Types by Gender
SELECT Sex, `Resting Electrocardiographic`, COUNT(*) AS Count
FROM heart
GROUP BY Sex, `Resting Electrocardiographic`
ORDER BY Sex, count DESC;

-- 10. Distribution of thalassemia types
SELECT Thalassemia, COUNT(*) AS count
FROM heart
GROUP BY Thalassemia;

-- 11. Oldest patients with disease
SELECT *
FROM heart
WHERE `Disease Condition` = 'Disease'
ORDER BY Age DESC
LIMIT 10;

-- 12. Count the number of patients by Disease Condition.
SELECT `Disease Condition`, COUNT(*) as Count
FROM heart
GROUP BY `Disease Condition`;
