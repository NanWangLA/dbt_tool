with  source_store_sales as (
    select * from {{ source('SNOWFLAKE_SAMPLE_DATA', 'STORE_SALES') }}
),
final as(
    select * from source_store_sales
)

select * from final
