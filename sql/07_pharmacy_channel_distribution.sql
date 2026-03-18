#7 Pharmacy Channel Distribution#

SELECT channel, count(*) as count_by_channel
from laad_claims
where claim_status = 'Approved'
group by channel
order by count_by_channel desc;