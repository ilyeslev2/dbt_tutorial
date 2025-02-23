{% macro generate_database_name(custom_database_name=none, node=none) -%}

    {%- set default_database = default_database -%}
    {%- if target.name == 'dev' and custom_database_name is not none -%}

        PROD_{{ custom_database_name | trim }}

    {%- else -%}

        DEV_{{ custom_database_name | trim }}

    {%- endif -%}

{%- endmacro %}