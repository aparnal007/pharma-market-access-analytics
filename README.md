**Project Title: Pharmaceutical Market Access Analytics using SQL**

**Overview:** This project demonstrates SQL-based analytics simulating pharmaceutical claims datasets similar to IQVIA LAAD or Symphony claims data.

**The analysis focuses on key business questions relevant to:**
market access strategy,
payer coverage dynamics,
patient affordability programs,
drug utilization patterns,
medication adherence

**Tools Used:** 
1.MySQL ( CTEs,Window functions (LAG, DENSE_RANK),Conditional aggregation, Date functions (DATEDIFF, DATE_ADD), Case classification logic)
2.Power BI
3.LAAD simulated Dataset


**Columns in LAAD Claims Dataset included:**
patient_id, drug_name, payer_type, prior_authorization, rebate_applied, out_of_pocket_cost, channel, region, prescriber_specialty,
Extended Claims Dataset Used for adherence analysis including: days_supplied, therapy_discontinuation_date

**Analyses Performed**
1.Payer Mix by Therapeutic Area
2.Prior Authorization Impact on Claim Outcomes
3.Out-of-Pocket Cost by Payer
4.Copay Assistance Impact by Therapy
5.Rebate Penetration by Payer
6.Top Drugs by Region
7.Pharmacy Channel Distribution
8.Patient Adherence Analysis
