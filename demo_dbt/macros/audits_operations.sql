{% macro insert_audits(action_name) %}

insert into DEMO_DB.PUBLIC.DBT_AUDITS (audit_type) 

values('{{ action_name }}');

commit;


{% endmacro %}
