#4. OOP cost by drug and copay support#
select drug_name, patient_copay_support_used, COUNT(*) AS claims, round (avg(out_of_pocket_cost),2) as average_OOP_cost
from laad_claims
where claim_status = 'Approved'
group by drug_name, patient_copay_support_used
order by drug_name;

select drug_name, round(avg(case when patient_copay_support_used = 'Yes' then out_of_pocket_cost end ),2) as avg_OOP_with_copay,
round(avg(case when patient_copay_support_used = 'No' then out_of_pocket_cost end ),2) as avg_OOP_no_copay
from laad_claims
where claim_status = 'Approved'
group by drug_name
order by drug_name;
