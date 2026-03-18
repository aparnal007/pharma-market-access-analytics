#6. Top Drugs within each region#

With top_drugs_table as (select region, drug_name, count(*) as No_of_approved_prescriptions
from laad_claims
where claim_status = 'Approved'
group by region, drug_name)

select *, dense_rank() over (partition by region order by No_of_approved_prescriptions desc) as drug_rank
from top_drugs_table
order by region, No_of_approved_prescriptions desc;