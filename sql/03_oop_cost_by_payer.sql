#3. OOP cost outcome by payer type and copay support#
select payer_type, patient_copay_support_used, COUNT(*) AS claims, round (avg(out_of_pocket_cost),2) as average_OOP_cost
from laad_claims
where claim_status = 'Approved'
group by payer_type, patient_copay_support_used
order by payer_type;