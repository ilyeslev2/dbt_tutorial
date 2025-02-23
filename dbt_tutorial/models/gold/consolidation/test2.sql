
-- Use the `ref` function to select from other models

select *
from {{ ref('test1') }}
where id = 1
