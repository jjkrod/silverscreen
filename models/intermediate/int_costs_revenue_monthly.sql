select 
    COALESCE(i.movie_id, ism.movie_id) AS movie_id,
    COALESCE(i.month, ism.transaction_month) AS month,
    COALESCE(i.location_id, ism.location_id) AS location_id,
    COALESCE(rental_costs, 0) AS rental_costs,
    transaction_month,
    revenue,
    tickets_sold
from {{ ref("stg_invoices") }} as i
FULL JOIN
    {{ ref("int_sales_monthly") }} as ism
    on i.location_id = ism.location_id
    and i.movie_id = ism.movie_id
    and i.month = ism.transaction_month
