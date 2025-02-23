{% macro generate_database_name(custom_database_name=none, node=none) -%}
    {%- set environment = target.name -%}
    {%- if target.name == 'prod' -%}

        PROD_{{ custom_database_name | trim }}

    {%- else -%}

        {{environment}}_{{ custom_database_name | trim }}

    {%- endif -%}

{%- endmacro %}