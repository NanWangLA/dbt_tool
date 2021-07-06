{{
  config(
    materialized='from_external_stage',
    stage_url = 's3://sandbox-bigdata-ingestion-py-data-csv-general/CTV.csv'
  )
}}

select
  $1:field_one::int as field_one,
  $1:field_two::string as field_two
from {{ external_stage() }}