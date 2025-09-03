SELECT * FROM {{ ref('stg_nj001')}}
UNION ALL
SELECT * FROM {{ ref('stg_nj002')}}
UNION ALL
SELECT * FROM {{ ref('stg_nj003')}}