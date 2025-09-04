{{ config(materialized='table')}}

SELECT 
    icrm.movie_id AS movie_id,
    movie_title,
    genre,
    studio,
    month,
    location_id,
    rental_costs,
    tickets_sold,
    revenue
FROM {{ ref('int_costs_revenue_monthly') }} AS icrm
LEFT JOIN
{{ ref('stg_movies') }} m
ON icrm.movie_id=m.movie_id