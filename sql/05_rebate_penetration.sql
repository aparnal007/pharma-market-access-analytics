#5. Rebate penetration by payer type #
With claim_table as (select payer_type, count(*) as total_claims, count(case when rebate_applied = 'Yes' then 1 end) as claim_count_with_rebates
from laad_claims
where claim_status = 'Approved'
group by payer_type)

select *, round((claim_count_with_rebates/total_claims)*100.0,2) as rebate_claim_percentage
from claim_table
order by rebate_claim_percentage desc;