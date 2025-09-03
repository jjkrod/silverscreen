SELECT 
    movie_id,
    timestamp,
    'NJ_001' AS location_id,
    COALESCE(ticket_amount, 0) AS tickets_sold,
    COALESCE(transaction_total, 0) AS revenue
FROM 
{{ source('silverscreen','nj_001')}}