select * from Health.dbo.ocd_patient_dataset$

SELECT 
    Gender,
    COUNT([Patient ID]) AS Patient_count,           
    round(AVG([Y-BOCS Score (Obsessions)]),2) AS avg_obs_score  
FROM 
    Health.dbo.ocd_patient_dataset$
GROUP BY 
    Gender                                     
ORDER BY 
    Patient_count;                              

SELECT Gender,
       COUNT(*) AS Patient_Count,
       round((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Health.dbo.ocd_patient_dataset$)),2) AS Gender_Percentage
FROM Health.dbo.ocd_patient_dataset$
GROUP BY Gender
ORDER BY Gender;


SELECT 
  Ethnicity,
  COUNT([Patient ID]) AS patient_Count,
  round(AVG([Y-BOCS Score (Obsessions)]),2) AS obs_score
FROM Health.dbo.ocd_patient_dataset$
GROUP BY Ethnicity
ORDER BY patient_Count;

ALTER TABLE Health.dbo.ocd_patient_dataset$
ALTER COLUMN [OCD Diagnosis Date] DATE;

SELECT 
  FORMAT([OCD Diagnosis Date], 'yyyy-MM-01 00:00:00') AS month,
  COUNT([Patient ID]) AS patient_count
FROM Health.dbo.ocd_patient_dataset$
GROUP BY FORMAT([OCD Diagnosis Date], 'yyyy-MM-01 00:00:00')
ORDER BY patient_count;


SELECT 
  [Obsession Type],
  COUNT([Patient ID]) AS Patient_count,
 round( AVG([Y-BOCS Score (Obsessions)]),2) AS obs_score
FROM Health.dbo.ocd_patient_dataset$
GROUP BY [Obsession Type]
ORDER BY Patient_count;


SELECT 
     [Compulsion Type] ,
  COUNT([Patient ID]) AS Patient_count,
 round( AVG([Y-BOCS Score (Obsessions)]),2) AS obs_score
FROM Health.dbo.ocd_patient_dataset$
GROUP BY [Compulsion Type]
ORDER BY Patient_count;


