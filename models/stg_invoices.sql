SELECT 
    movie_id,
    TO_CHAR(month, 'YYYY-MM') AS month,
    location_id,
    SUM(total_invoice_sum) AS rental_costs
FROM 
{{ source('silverscreen','invoices')}}
GROUP BY movie_id, month, location_id
