SELECT
    location_id,
    movie_id,
    date_trunc('month', timestamp) as transaction_month,
    sum(revenue) as revenue,
    sum(tickets_sold) as tickets_sold
FROM {{ ref('int_sales')}}
GROUP BY location_id, movie_id, transaction_month
