#2. Prior authorization and approval outcomes #
select prior_authorization, claim_status, count(*) as count_by_claim_status
from laad_claims
group by prior_authorization, claim_status
order by prior_authorization;