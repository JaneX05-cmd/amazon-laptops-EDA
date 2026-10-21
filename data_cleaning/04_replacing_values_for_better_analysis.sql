DROP TABLE laptops_clean
CREATE TABLE laptops_clean AS
SELECT 
    id::INT,
    product_title,
	rating,
	total_rating, 
	-- Replacing price with only number
    NULLIF(regexp_replace(price, '[^0-9.]', '', 'g'), '')::NUMERIC AS price, 
	NULLIF(regexp_replace(mrp, '[^0-9.]', '', 'g'), '')::NUMERIC AS final_price, 
	-- replacing to leave ram as number of gb
    NULLIF(regexp_replace(ram, '[^0-9]', '', 'g'), '')::INT AS ram_gb,
    NULLIF(regexp_replace(next_month_bought, '[^0-9]', '', 'g'), '')::INT AS bought_in_last_month,
    brand,
	cpu_model,
	special_features,
	graphics_card,
    os,
	NULLIF(regexp_replace(screen_size, '[^0-9.]', '', 'g'), '')::FLOAT AS screen_size_in_inches,
	CASE
    WHEN hard_disk_size ILIKE '%TB%'
      OR NULLIF(regexp_replace(hard_disk_size, '[^0-9.]', '', 'g'), '')::NUMERIC <= 10
    THEN NULLIF(regexp_replace(hard_disk_size, '[^0-9.]', '', 'g'), '')::NUMERIC * 1000
    ELSE NULLIF(regexp_replace(hard_disk_size, '[^0-9.]', '', 'g'), '')::NUMERIC
END AS storage_gb
FROM amazon_laptops_staging;

SELECT * FROM laptops_clean