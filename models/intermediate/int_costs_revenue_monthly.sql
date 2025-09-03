select 
    i.movie_id AS movie_id_1,
    month,
    i.location_id AS location_id_1,
    rental_costs,
    ism.location_id AS location_id_2,
    ism.movie_id AS movie_id_2,
    transaction_month,
    revenue,
    tickets_sold
from {{ ref("stg_invoices") }} as i
FULL JOIN
    {{ ref("int_sales_monthly") }} as ism
    on i.location_id = ism.location_id
    and i.movie_id = ism.movie_id
    and i.month = ism.transaction_month
