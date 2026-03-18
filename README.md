# Pharmaceutical Market Access Analytics (SQL Project)

## Project Overview
This project demonstrates **SQL-based analytics applied to simulated pharmaceutical claims datasets** similar to IQVIA LAAD or Symphony claims data. The goal is to analyze payer access dynamics, patient affordability programs, drug utilization patterns, and medication adherence behavior.

---

## Tools Used

| Tool | Purpose |
|-----|------|
| **MySQL** | Data querying and analysis |
| **SQL** | Data aggregation, patient-level analysis, and access analytics |
| **Power BI** | Data visualization (planned dashboards) |
| **GitHub** | Project documentation and version control |

---

## Dataset Description

The dataset simulates **pharmaceutical prescription claims data**.

| Column | Description |
|------|------|
| **patient_id** | Unique patient identifier |
| **drug_name** | Prescribed therapy |
| **payer_type** | Insurance coverage type |
| **prior_authorization** | Indicates whether prior authorization was required |
| **rebate_applied** | Indicates presence of manufacturer rebate |
| **out_of_pocket_cost** | Patient cost burden |
| **channel** | Pharmacy dispensing channel |
| **region** | Geographic region |
| **prescriber_specialty** | Physician specialty |
| **days_supplied** | Medication supply duration |
| **therapy_discontinuation_date** | Date therapy ended (if applicable) |

---

# SQL Analyses Performed

## 1️⃣ Payer Mix by Therapeutic Area

**Business Question**

How does payer distribution vary across therapeutic areas?

**Approach**

Aggregated approved prescriptions by payer type and prescriber specialty.

**Insight**

Government payers such as **Medicare and Medicaid contribute a significant share of prescriptions across multiple therapeutic areas**, reflecting strong reliance on public insurance coverage for specialty therapies.

---

## 2️⃣ Impact of Prior Authorization

**Business Question**

Does prior authorization affect claim approval outcomes?

**Approach**

Compared claim approval outcomes between prescriptions requiring prior authorization and those without authorization requirements.

**Insight**

Claims requiring **prior authorization exhibited higher rejection or pending rates**, indicating that utilization management policies can introduce barriers that delay therapy access.

---

## 3️⃣ Out-of-Pocket Cost by Payer

**Business Question**

How does patient financial burden vary across payer segments?

**Approach**

Calculated average patient out-of-pocket cost by payer type using approved claims.

**Insight**

Patients covered by **Medicare and Military payers experienced higher average out-of-pocket costs**, while Medicaid patients generally experienced lower cost burden.

---

## 4️⃣ Copay Assistance Impact

**Business Question**

Do manufacturer copay assistance programs reduce patient out-of-pocket costs?

**Approach**

Compared average patient cost burden between patients receiving copay support and those without assistance.

**Insight**

Copay assistance programs **significantly reduced patient financial burden for several specialty therapies**, highlighting the importance of manufacturer affordability programs in improving treatment access.

---

## 5️⃣ Rebate Penetration by Payer

**Business Question**

What proportion of prescriptions involve payer rebate agreements?

**Approach**

Calculated the percentage of claims associated with manufacturer rebates across payer types.

**Insight**

**Commercial payer segments demonstrated higher rebate penetration**, consistent with pharmaceutical contracting strategies designed to secure favorable formulary placement.

---

## 6️⃣ Top Drugs by Region

**Business Question**

Which therapies account for the highest prescription volume across geographic regions?

**Approach**

Aggregated prescription counts by region and drug name and ranked therapies using SQL window functions.

**Insight**

Regional prescribing patterns vary across therapies, with **specialty biologics appearing prominently across several regions**.

---

## 7️⃣ Pharmacy Channel Distribution

**Business Question**

Which pharmacy channels dispense the majority of prescriptions?

**Approach**

Analyzed prescription distribution across retail, mail-order, and specialty pharmacy channels.

**Insight**

**Specialty pharmacy channels dominate the distribution of biologic therapies**, reflecting controlled distribution models for complex specialty medications.

---

## 8️⃣ Patient Adherence Analysis

**Business Question**

Which patients exhibit refill behavior suggesting potential non-adherence?

**Approach**

Used refill-gap methodology combining prescription dates and medication supply duration to classify adherence behavior.

Patients were classified as:

- **First Prescription**
- **Adherent**
- **Non-Adherent**
- **Therapy Discontinued**

**Insight**

Refill gap analysis identified **patients with delayed refills exceeding expected medication supply windows**, indicating potential adherence challenges that may impact treatment outcomes.

---

# SQL Skills Demonstrated

This project demonstrates practical SQL techniques used in pharmaceutical commercial analytics.

Key SQL concepts applied include:

- **Common Table Expressions (CTEs)**
- **Window Functions (`LAG`, `DENSE_RANK`)**
- **Conditional Logic (`CASE`)**
- **Aggregation and Grouping**
- **Date Calculations (`DATEDIFF`, `DATE_ADD`)**
- **Patient-level longitudinal analysis**

---

# Repository Structure

## Repository Structure

```
pharma-market-access-analytics
│
├── data
│   ├── LAAD.csv
│   └── laad_extended.csv
│
├── sql
│   ├── 01_payer_mix.sql
│   ├── 02_prior_authorization.sql
│   ├── 03_oop_cost.sql
│   ├── 04_copay_analysis.sql
│   ├── 05_rebate_penetration.sql
│   ├── 06_top_drugs_region.sql
│   ├── 07_channel_distribution.sql
│   └── 08_patient_adherence.sql
│
├── results
│   └── query_outputs.csv
│
├── dashboard
│   └── pharma_access_dashboard.pbix
│
└── README.md
```
