SELECT
    *
FROM {{ ref("stg_nj001") }} as nj001
WHERE revenue <0