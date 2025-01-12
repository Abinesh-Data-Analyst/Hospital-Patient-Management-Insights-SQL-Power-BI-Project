# Hospital Patient Management System - SQL & Power BI Project

![Dashboard Preview](img1.png)

## 📋 **Project Overview**
The **Hospital Patient Management System** project is designed to provide insights into hospital operations by analyzing patient, doctor, and treatment data using **SQL Server** and **Power BI**. This project involves creating a relational database, running complex SQL queries, and building an interactive dashboard to visualize key metrics such as patient admission trends, doctor performance, and revenue analysis.

---

## 🎯 **Objective**
The main objective of this project is to help hospital administrators make **data-driven decisions** by providing insights into:
- Patient admission trends
- Common diagnoses
- Doctor performance metrics
- Monthly revenue trends
- Average treatment costs

This system aims to improve hospital operations and optimize healthcare services.

---

## 🗃️ **Datasets Used**
The project uses three datasets:

1. **Patients Dataset**
   - `Patient_ID` (Primary Key)
   - `Patient_Name`
   - `Age`
   - `Gender`
   - `Admission_Date`
   - `Discharge_Date`
   - `Diagnosis`

2. **Doctors Dataset**
   - `Doctor_ID` (Primary Key)
   - `Doctor_Name`
   - `Specialization`
   - `Years_of_Experience`

3. **Treatments Dataset**
   - `Treatment_ID` (Primary Key)
   - `Patient_ID` (Foreign Key)
   - `Doctor_ID` (Foreign Key)
   - `Treatment_Date`
   - `Treatment_Type`
   - `Cost`

---

## 🛠️ **Tools & Technologies**
- **SQL Server (T-SQL)** for data storage and query execution
- **Power BI** for creating interactive dashboards
- **DAX (Data Analysis Expressions)** for advanced calculations
- **Excel** for initial data cleaning and analysis

---

## 🧑‍💻 **SQL Queries**
Here are some key SQL queries used in the project:

1. **Patients Admitted Per Year**
```sql
SELECT
    YEAR(Admission_Date) AS Admission_Year,
    COUNT(*) AS Total_Patients
FROM Patients
GROUP BY YEAR(Admission_Date)
ORDER BY Admission_Year;
```

2. **Average Length of Stay for Patients**
```sql
SELECT
    AVG(DATEDIFF(DAY, Admission_Date, Discharge_Date)) AS Avg_Length_of_Stay
FROM Patients
WHERE Discharge_Date IS NOT NULL;
```

3. **Monthly Revenue Trend**
```sql
SELECT
    FORMAT(Treatment_Date, 'yyyy-MM') AS Month,
    SUM(Cost) AS Total_Revenue
FROM Treatments
GROUP BY FORMAT(Treatment_Date, 'yyyy-MM')
ORDER BY Month;
```

---

## 📊 **Power BI Dashboard**
The Power BI dashboard provides a comprehensive view of hospital operations. Key visuals include:

1. **Patients Admitted Per Year** (Bar Chart)
2. **Most Common Diagnoses** (Donut Chart)
3. **Monthly Revenue Trend** (Line Chart)
4. **Doctor Performance** (Table)
5. **Total Revenue & Average Treatment Cost** (KPI Cards)

---

## 📈 **Key Insights**
1. **Patient Admission Trends**: Identify peak admission periods and optimize hospital resources.
2. **Common Diagnoses**: Understand the most frequent health issues among patients.
3. **Doctor Performance**: Track the number of patients treated by each doctor.
4. **Monthly Revenue Trends**: Analyze hospital revenue on a monthly basis.
5. **Average Treatment Costs**: Monitor treatment costs to optimize hospital billing.

---

## 🧠 **Skills Demonstrated**
### **Technical Skills**
- SQL Server (T-SQL)
- Data Modeling
- Complex SQL Queries
- Power BI Dashboard Creation
- DAX (Data Analysis Expressions)
- Business Intelligence (BI)

### **Data Analytics Skills**
- Patient Trends Analysis
- Doctor Performance Metrics
- Revenue Analysis
- Diagnoses Analysis

---

## 📄 **Future Improvements**
1. Add patient feedback analysis to improve healthcare services.
2. Integrate real-time data for live dashboard updates.
3. Implement machine learning models to predict patient admissions and diagnoses trends.

---

## 📎 **Conclusion**
This project demonstrates the use of **SQL Server** and **Power BI** to build a **Hospital Patient Management System** that provides valuable insights into hospital operations. The interactive dashboard enables stakeholders to make **data-driven decisions**, ultimately improving healthcare services and operational efficiency.

---

## 💡 **Project Files**
- SQL Scripts for table creation and queries
- Power BI (PBIX) file with the interactive dashboard

---

### 💬 **Contact**
Feel free to reach out for any queries or collaboration opportunities:
- **LinkedIn**: [Abinesh S](https://www.linkedin.com/in/abineshsekar)
- **GitHub**: (https://github.com/Abinesh-Data-Analyst)
- **Email**: (www.neshabi243@gmail.com)

