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
| **therapy_discontinuation_date** | Date therapy ended |

---

# SQL Analyses Performed

## 1️⃣ Payer Mix by Therapeutic Area

**Business Question**

How does payer distribution vary across therapeutic areas?

**Approach**

Aggregated approved prescriptions by payer type and prescriber specialty.

**Insight**

Analysis of the dataset showed that government payers such as **Medicare and Medicaid contributed a significant share of prescriptions across multiple therapeutic areas**, reflecting strong reliance on public insurance coverage for specialty therapies.

<img width="515" height="356" alt="01_payer_mix_output png" src="https://github.com/user-attachments/assets/f1c5a404-4da5-4e78-83ac-00cd98ee013a" />

---

## 2️⃣ Impact of Prior Authorization

**Business Question**

Does prior authorization affect claim approval outcomes?

**Approach**

Compared claim approval outcomes between prescriptions requiring prior authorization and those without authorization requirements.

**Insight**

Claims requiring **prior authorization exhibited higher rejection or pending rates**, indicating that utilization management policies can introduce barriers that delay therapy access.

<img width="539" height="374" alt="02_prior_auth_output" src="https://github.com/user-attachments/assets/6e3d8bf9-609a-4416-99bc-cc0b4d7d626b" />

---

## 3️⃣ Out-of-Pocket Cost by Payer

**Business Question**

How does patient financial burden vary across payer segments?

**Approach**

Calculated average patient out-of-pocket cost by payer type using approved claims.

**Insight**

In the dataset, patients covered by **Medicare and Military payers experienced higher average out-of-pocket costs**, while Medicaid patients generally experienced lower cost burden. Identifies segments needing affordability programs and copay optimization.

<img width="702" height="356" alt="03_oop_by_payer_output" src="https://github.com/user-attachments/assets/f7b92b79-7512-4925-8a3b-c4e40e62afaf" />

---

## 4️⃣ Copay Assistance Impact

**Business Question**

Do manufacturer copay assistance programs reduce patient out-of-pocket costs?

**Approach**

Compared average patient cost burden between patients receiving copay support and those without assistance.

**Insight**

Copay assistance programs **significantly reduced patient financial burden for several specialty therapies**, highlighting the importance of manufacturer affordability programs in improving treatment access.

<img width="383" height="202" alt="04_copay_analysis_output" src="https://github.com/user-attachments/assets/b5374f62-4f70-4c67-b87a-63792e498eca" />

---

## 5️⃣ Rebate Penetration by Payer

**Business Question**

What proportion of prescriptions involve payer rebate agreements?

**Approach**

Calculated the percentage of claims associated with manufacturer rebates across payer types.

**Insight**

**Rebates were concentrated in insured payer segments (Medicare, Commercial, Military).**  Rebate strategies drive formulary access and pricing negotiations, while self-pay patients rely more on copay support for affordability.

<img width="374" height="154" alt="05_rebate_analysis_output" src="https://github.com/user-attachments/assets/055b3312-1699-4721-bf69-a85dcbbf3657" />

---

## 6️⃣ Top Drugs by Region

**Business Question**

Which therapies account for the highest prescription volume across geographic regions?

**Approach**

Aggregated prescription counts by region and drug name and ranked therapies using SQL window functions.

**Insight**

Regional prescribing patterns varied across therapies, with **specialty biologics appearing prominently across several regions**. This data is useful for regional HCP targeting and localized brand strategy.

---

## 7️⃣ Pharmacy Channel Distribution

**Business Question**

Which pharmacy channels dispense the majority of prescriptions?

**Approach**

Analyzed prescription distribution across retail, mail-order, and specialty pharmacy channels.

**Insight**

**Specialty pharmacy channels dominated the distribution of biologic therapies**, reflecting controlled distribution models for complex specialty medications.

<img width="188" height="106" alt="07_channel_distribution_output" src="https://github.com/user-attachments/assets/65d254a4-f1cf-4250-9414-9b82df75e3ae" />

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
<img width="458" height="239" alt="08_adherence_output" src="https://github.com/user-attachments/assets/b7c115a3-a7af-4593-83ce-df01bb3b030b" />

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
