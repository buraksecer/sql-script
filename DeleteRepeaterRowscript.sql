  WITH cte AS (
    SELECT 
        Id, 
        Name,  
        ROW_NUMBER() OVER (
            PARTITION BY 
				DistrictId, 
				Name
            ORDER BY 
				DistrictId, 
				Name
        ) row_num
     FROM 
        yourtablename
)
DELETE FROM cte
WHERE row_num > 1;