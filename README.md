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

**Analysis and Insights**

**1. Payer Mix by Therapeutic Area**

**Business Question:** How does payer distribution vary across therapeutic areas?

**Approach:** Aggregated approved claims by payer type and prescriber specialty to evaluate payer mix across therapy areas.

**Insight:** Government payers such as Medicare and Medicaid contribute a significant share of prescriptions across multiple therapeutic areas, particularly in specialties such as oncology and rheumatology. This reflects the heavy reliance on government coverage for high-cost specialty therapies.

**2.Impact of Prior Authorization on Claim Outcomes**

**Business Question:** Does prior authorization influence claim approval outcomes?

**Approach:** Compared claim approval, rejection, and pending status for prescriptions requiring prior authorization versus those without authorization requirements.

**Insight:** Claims requiring prior authorization exhibited higher proportions of pending or rejected claims, suggesting that utilization management policies may introduce access barriers that delay therapy initiation.

**3. Out-of-Pocket Cost by Payer Type**

**Business Question**: How does patient financial burden vary across payer segments?

**Approach**: Calculated average patient out-of-pocket cost by payer type using approved claims.

**Insight**: Patients covered by Medicare and Military payers experienced higher average out-of-pocket costs, while Medicaid patients showed relatively lower patient cost burden. This reflects differences in payer coverage structures and patient assistance eligibility.

**4. Impact of Copay Assistance Programs**

**Business Question**: Do manufacturer copay programs reduce patient out-of-pocket cost?

**Approach**: Compared average out-of-pocket costs between patients using copay assistance and those without support across different therapies.

**Insight**: Copay assistance programs substantially reduced patient financial burden for several specialty therapies, highlighting the role of manufacturer affordability programs in improving treatment access and adherence.

**5. Rebate Penetration by Payer**

**Business Question**: What proportion of claims involve payer rebate agreements?

**Approach**: Calculated the percentage of approved claims associated with manufacturer rebates across payer segments.

**Insight**: Commercial payers showed the highest rebate penetration, consistent with typical pharmaceutical contracting strategies where rebates are negotiated to secure favorable formulary positioning.

**6. Top Drugs by Region**

**Business Question**: Which therapies account for the highest prescription volume within each region?

**Approach**: Aggregated approved prescriptions by region and drug name, then ranked therapies within each region using window functions.

**Insight**: Regional prescribing patterns vary across therapies, with biologics and specialty drugs appearing prominently in multiple regions, suggesting strong demand in chronic and specialty disease areas.

**7. Pharmacy Channel Distribution**

**Business Question** Which pharmacy channels dispense the majority of prescriptions?

**Approach**: Analyzed prescription counts by dispensing channel including retail, mail order, and specialty pharmacies.

**Insight**: Specialty pharmacy channels represent a major distribution pathway for biologic therapies, reflecting the controlled distribution model used for complex specialty medications.

**8. Patient Adherence Analysis**

**Business Question** Which patients exhibit refill behavior indicating potential non-adherence?

**Approach**: Used refill-gap methodology combining prescription dates and days supplied to classify patients as first prescription, adherent, non-adherent, or discontinued.

**Insight**: Refill gap analysis identified patients with refill delays exceeding expected medication supply, indicating potential adherence challenges. Such insights are often used by commercial analytics teams to design patient support interventions and improve therapy persistence.
