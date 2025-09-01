SELECT 
    movie_id,
    date AS timestamp,
    'nj_002' AS location_id,
    COALESCE(ticket_amount, 0) AS tickets_sold,
    COALESCE(total_earned, 0) AS revenue
FROM 
{{ source('silverscreen','nj_002')}}