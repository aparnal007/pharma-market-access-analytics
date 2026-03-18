# 1. Payer mix across therapeutic areas #
select prescriber_specialty, payer_type, count(*) as number_of_approved_prescriptions
from laad_claims
where claim_status ='Approved'
group by  prescriber_specialty, payer_type
order by prescriber_specialty, number_of_approved_prescriptions DESC;