--Patient Analysis Queries
--How many patients were admitted each year?
SELECT 
    YEAR(Admission_Date) AS Admission_Year, 
    COUNT(*) AS Total_Patients
FROM Patients
GROUP BY YEAR(Admission_Date)
ORDER BY Admission_Year;

--What is the average length of stay for patients?
SELECT 
    AVG(DATEDIFF(DAY, Admission_Date, Discharge_Date)) AS Avg_Length_of_Stay
FROM Patients
WHERE Discharge_Date IS NOT NULL;

--Which diagnoses are most common?
SELECT 
    Diagnosis, 
    COUNT(*) AS Total_Patients
FROM Patients
GROUP BY Diagnosis
ORDER BY Total_Patients DESC;

--Doctor Performance Analysis Queries
--Which doctor has treated the most patients?
SELECT 
    d.Doctor_Name,
    COUNT(t.Treatment_ID) AS Total_Patients_Treated
FROM Doctors d
JOIN Treatments t ON d.Doctor_ID = t.Doctor_ID
GROUP BY d.Doctor_Name
ORDER BY Total_Patients_Treated DESC;

--What is the average treatment cost per doctor?
SELECT 
    d.Doctor_Name,
    ROUND(AVG(t.Cost),2) AS Avg_Treatment_Cost
FROM Doctors d
JOIN Treatments t ON d.Doctor_ID = t.Doctor_ID
GROUP BY d.Doctor_Name
ORDER BY Avg_Treatment_Cost DESC;

--Which specialization generates the highest revenue?
SELECT 
    d.Specialization,
    ROUND(SUM(t.Cost),2) AS Total_Revenue
FROM Doctors d
JOIN Treatments t ON d.Doctor_ID = t.Doctor_ID
GROUP BY d.Specialization
ORDER BY Total_Revenue DESC;

--Treatment Analysis Queries
--What is the average treatment cost per patient?
SELECT 
    p.Patient_Name,
    ROUND(AVG(t.Cost),2) AS Avg_Treatment_Cost
FROM Patients p
JOIN Treatments t ON p.Patient_ID = t.Patient_ID
GROUP BY p.Patient_Name
ORDER BY Avg_Treatment_Cost DESC;

--How much revenue was generated each month?
SELECT 
    FORMAT(Treatment_Date, 'yyyy-MM') AS Month,
    ROUND(SUM(Cost),2) AS Total_Revenue
FROM Treatments
GROUP BY FORMAT(Treatment_Date, 'yyyy-MM')
ORDER BY Month;

--Which treatment type is the most expensive?
SELECT 
    Treatment_Type,
    ROUND(AVG(Cost),2) AS Avg_Cost
FROM Treatments
GROUP BY Treatment_Type
ORDER BY Avg_Cost DESC;



