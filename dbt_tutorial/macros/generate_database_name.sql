{% macro generate_database_name(custom_database_name=none, node=none) -%}
    {%- if target.name == 'prod' -%}

        PROD_{{ custom_database_name | trim }}

    {%- else -%}

        DEV_{{ custom_database_name | trim }}

    {%- endif -%}

{%- endmacro %}