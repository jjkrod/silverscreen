SELECT 
    details AS movie_id,
    timestamp,
    'nj_003' AS location_id,
    COALESCE(amount, 0) AS tickets_sold,
    COALESCE(total_value, 0) AS revenue
FROM 
{{ source('silverscreen','nj_003')}}
WHERE product_type = 'ticket'