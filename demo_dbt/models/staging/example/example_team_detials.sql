with teams as (
    -- This refers to the table created from data/country_codes.csv
    select * from {{ ref('country_codes') }}

),

team_locations as (
    select * from {{ref('team_locations')}}
), final as (
    select  teams.country_code,
            team_locations.name,
            team_locations.city,
            team_locations.state,
            code,
            team_locations.name = '{{var("current_champion")}}' as is_champion
    from teams
    right join team_locations
    on team_locations.code = teams.country_code
)

select * from final