
-- Use the `ref` function to select from other models

select *
from {{ ref('silver_test1') }}
where id = 1
