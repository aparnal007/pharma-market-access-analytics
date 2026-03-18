#8.1 Patient adherence#

With previous_prescription_table as (SELECT patient_id, drug_name, date_of_service, lag(date_of_service) over (partition by patient_id order by date_of_service) as previous_prescription
from laad_extended
where claim_status = 'Approved'),

refill_gap_days_table as (select *, datediff(date_of_service, previous_prescription) as refill_gap_days
from previous_prescription_table)

select *, case when refill_gap_days is NULL then 'first_prescription' 
when refill_gap_days <60 then 'adherent'
else 'non-adherent' 
end as adherance_status
from refill_gap_days_table;
 
 #8.2 Patient adherence with discontinuation_date and days_supplied #
 With previous_prescription_date_table as (SELECT patient_id, drug_name, date_of_service, days_supplied, therapy_discontinuation_date, lag(date_of_service) over (partition by patient_id order by date_of_service) as previous_prescription_date
from laad_extended
where claim_status = 'Approved'),

previous_supply_table as (select *, lag(days_supplied) over (partition by patient_id order by date_of_service) as previous_supply_days
from previous_prescription_date_table),


expected_fill_date_table as (select*, date_add(previous_prescription_date, interval previous_supply_days day) as expected_fill_date
from previous_supply_table),

refill_gap_days_table as (select *, datediff(date_of_service, expected_fill_date) as refill_gap_days
from expected_fill_date_table)

select *, case when previous_prescription_date is NULL then 'first_prescription' 
when therapy_discontinuation_date !='' then 'discontinued'
when refill_gap_days <40 then 'adherent'
else 'non-adherent' 
end as adherance_status
from refill_gap_days_table;



SET SQL_SAFE_UPDATES = 0;

UPDATE laad_extended
SET date_of_service = STR_TO_DATE(date_of_service,'%d-%m-%Y');
ALTER TABLE laad_extended
MODIFY date_of_service DATE;
